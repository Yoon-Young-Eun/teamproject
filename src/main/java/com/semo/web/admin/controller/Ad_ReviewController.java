package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.ReviewVO;

@Controller
public class Ad_ReviewController {
	
	@Autowired
	private BoardService BoardService;
		
		// 리뷰 상태 변화
		@RequestMapping(value="/updateReviewBoard.mdo", method=RequestMethod.GET)
		public String updateReviewBoard(ReviewVO vo, Model model) {
			System.out.println("상태 활성/비활성 처리");
			System.out.println(vo);
			
			BoardService.updateReviewBoard(vo);
			System.out.println();
			
			return "/ReviewBoardList.mdo";
		}
	
		// 리뷰 목록
		@RequestMapping(value="/ReviewBoardList.mdo", method=RequestMethod.GET)
		public String getReviewBoardList(ReviewVO vo, Model model) {
			System.out.println("admin ReviewBoardList()");
			List<ReviewVO> ReviewList = BoardService.getReviewBoardList(vo);
			model.addAttribute("ReviewList", ReviewList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
			System.out.println(ReviewList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
			return "/admin/board_reviewlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
		}
		
		// 리뷰 상세
		@RequestMapping(value="/readReviewBoard.mdo", method=RequestMethod.GET)
		public String getReadReviewBoard(Model model, ReviewVO vo) {	
			System.out.println("admin readReviewBoard()");
			model.addAttribute("ReviewInfo", BoardService.getReadReviewBoard(vo));
			System.out.println(BoardService.getReadReviewBoard(vo));
		
			return "/admin/board_review.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
		}
		
		// 리뷰 삭제
		@RequestMapping(value="/deleteReviewBoard.mdo", method=RequestMethod.GET)
		public String deleteReviewBoard(ReviewVO vo, Model model) {
			System.out.println(vo);
			System.out.println("deleteReviewBoard 메서드 실행");
			BoardService.deleteReviewBoard(vo);
			System.out.println("완료!");
			return "/ReviewBoardList.mdo";
		}
		
		// 리뷰 삭제 (체크박스)
		@RequestMapping("/deleteReviewBoardCheck.mdo")
		public String deleteReviewBoardCheck(String[] tdArr, ReviewVO vo) {
			System.out.println(tdArr[0]);
			System.out.println("글 삭제 처리");

			if(tdArr!=null) {
				List<Integer> arr2 = new ArrayList<Integer>();
				for(int a=0; a<tdArr.length; a++) {
					System.out.println("dhsi");
					arr2.add(Integer.parseInt(tdArr[a])) ;
					System.out.println(arr2.get(a)+"tes");
					vo.setBoard_review_no(arr2.get(a));
					BoardService.deleteReviewBoard(vo.getBoard_review_no());
				}
			}
			return "/ReviewBoardList.mdo";
		}
	
}
