package com.semo.web.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.vo.NoticeVO;

@Controller
public class Ad_BoardController {

	@Autowired
	private BoardService boardservice;

	@RequestMapping("/getBoardList.mdo")
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
		return "getBoardList.mdo";
	}

	@RequestMapping("/updateBoard.mdo")
	public String updateBoard(NoticeVO vo) {
		System.out.println("글 수정 기능 처리");
		boardservice.updateBoard(vo);
		return "getBoardList.mdo";
	}

	@RequestMapping("/deleteBoard.mdo")
	public String deleteBoard(NoticeVO vo) {
		System.out.println("글 삭제 처리");
		boardservice.deleteBoard(vo);
		return "getBoardList.mdo";
	}

}