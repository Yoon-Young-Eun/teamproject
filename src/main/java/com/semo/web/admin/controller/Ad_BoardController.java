package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.vo.NoticeVO;


//계시판 관련(Q&A, BOARD, 공지사항, 자주하는 질문)

@Controller
public class Ad_BoardController {

	@Autowired
	private BoardService boardservice;

	@RequestMapping(value="/getBoardList.mdo", method = RequestMethod.GET)
	public String getBoardList(NoticeVO vo, Model model) {
		System.out.println("글 목록 처리");
		List<NoticeVO> boardList = boardservice.getBoardList(vo);
		model.addAttribute("boardList", boardList);
		return "/admin/board_notice.jsp";
	}

	@RequestMapping("/getBoard.mdo")
	public String getBoard(NoticeVO vo, Model model) {
		System.out.println("글 상세 보기 처리");
		model.addAttribute("board", boardservice.getBoard(vo));
		return "/admin/getBoard_notice.jsp";
	}

	@RequestMapping("/insertBoard.mdo")
	public String insertBoard(NoticeVO vo) {
		System.out.println("글 등록 처리");
		boardservice.insertBoard(vo);
		return "redirect:/getBoardList.mdo";
	}

	@RequestMapping(value="/updateBoard.mdo" , method = RequestMethod.GET)
	public String updateBoard(NoticeVO vo) {
		System.out.println("글 수정 기능 처리");
		boardservice.updateBoard(vo);
		return "getBoardList.mdo";
	}

	@RequestMapping("/getUpdate.mdo")
	public String getUpdate(NoticeVO vo, Model model) {
		System.out.println("글 수정정보 보기 처리");
		model.addAttribute("board", boardservice.getBoard(vo));
		return "/admin/board_notice_update.jsp";
	}


	@RequestMapping("/deleteBoard2.mdo")
	public String deleteBoard2(String[] tdArr, NoticeVO vo) {
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				arr2.add(Integer.parseInt(tdArr[a])) ;
				vo.setNotice_no(arr2.get(a));
				boardservice.deleteBoard(vo.getNotice_no());
			}
		}
		return "getBoardList.mdo";
	}


	@RequestMapping("/deleteBoard.mdo") 
	public String deleteBoard(NoticeVO vo) {
		System.out.println("글 삭제 처리"); 
		boardservice.deleteBoard(vo); 
		return "getBoardList.mdo"; }
}