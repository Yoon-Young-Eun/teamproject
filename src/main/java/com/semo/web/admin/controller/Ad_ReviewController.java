package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.Ad_BoardService;
import com.semo.web.admin.vo.FAQVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;

@Controller
public class Ad_ReviewController {
	
	@Autowired
	private Ad_BoardService BoardService;
		
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
		public String getReviewBoardList(PagingVO pvo, ReviewVO vo, Model model) {
			System.out.println("admin ReviewBoardList()");
			
			//검색조건을 가지고 페이지 이동을 하기 위한 장치
			//페이징 버튼에  href = &searchKeyword=${search.searchKeyword} 등을 하기위함 

				model.addAttribute("search",pvo);
			
			// 페이징 처리
		      if (pvo.getPageNum() == null) { //처음엔 값이 없으니 null
		    	  pvo.setPageNum("1"); //1번으로 설정
		       }
		      
		      System.out.println(pvo.getSelectPage());
		      if (pvo.getSelectPage()==null ) {  
		    	  pvo.setSelectPage("5"); //게시글 보이는 개수를 설정을 안하면 5(테이블에서 조회개수 변경을 위한 작업)
		      }
		      //pageNum 지금내가 몇 페이지에 이는지 확인하기
		      //curruntPage 현재 내가 위치하고있는 페이지
		      //startRow 현재 화면에서의 첫번째 게시물 
		      //endRow현재 화면에서의 마지막 게시물 행
		      //count 전체 게시글 수
		 
		       int pageSize = Integer.parseInt(pvo.getSelectPage()); //int로 형변환
		       int currentPage = Integer.parseInt(pvo.getPageNum()); // 현재 내가 위치하고있는 페이지
		       pvo.setStartRow((currentPage -1)* pageSize +1); //현재 화면에서의 첫번째 게시물
		       pvo.setEndRow(currentPage * pageSize); //현재 화면에서의 마지막 게시물 행
		       int count =0; 	 
		      
		       count = BoardService.getReviewArticleCount(pvo); // 조회 개수 (여러 검색 조건등이 포함되어야함)
		       System.out.println("count"+count);
		       List<ReviewVO> ReviewList = null; //조회 데이터를 담을 List 객체
		       if(count >0) { //조회할 데이터가 하나라도 있다면 메서드 실행
		    	   ReviewList= BoardService.getReviewBoardList(pvo);
		    	   System.out.println("ReviewList"+ReviewList);
		    	  
		       }else { //없으면 빵
		    	   ReviewList=Collections.emptyList(); 
		       }
		       
		       if(count >0) {  //45일 경우
		     	  int pageBlock =5;
		     	  int imsi =count % pageSize ==0 ?0:1; 
		     	  int pageCount = count/pageSize +imsi;  
		     	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1;  
		     	  int endPage = startPage + pageBlock -1;  
		     	  //endPage(10)가 pageCount(9) 보다 크면 작동 endPage=pageCount
		     	  if(endPage > pageCount) {
		     		  endPage = pageCount;
		     	  }
		     	  
		     	  model.addAttribute("pageCount",pageCount);
		     	  model.addAttribute("startPage",startPage);
		     	  model.addAttribute("endPage",endPage);
		     	  model.addAttribute("pageBlock",pageBlock);
		           model.addAttribute("count", count);
		     	  }
		       
		       //검색을 적용할 타이틀을 정하는 제목(jsp에서 받아서 작업할거임)
				Map<String, String> conditionMap = new HashMap<String, String>();
				conditionMap.put("별점", "board_review_rating");
				conditionMap.put("작성자", "board_review_name");
				conditionMap.put("제목", "board_review_title");
				conditionMap.put("내용", "board_review_content");
				/* conditionMap.put("회원상태", "customer_status"); */
				
			   //위에서 얻은 데이터를 model에 담아 보낸다~
		       model.addAttribute("conditionMap", conditionMap);
		       model.addAttribute("ReviewList", ReviewList);
		       System.out.println("Review 목록 리스트"+ReviewList);
			
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
