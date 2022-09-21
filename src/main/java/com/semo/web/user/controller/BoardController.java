package com.semo.web.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.user.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService BoardService;

	@RequestMapping(value="/getBoardEventList.do", method=RequestMethod.GET)
	public String getBoardEventList(Model model) {
		System.out.println("admin storeList()");
		List<BannerVO> EventList = BoardService.getBoardEventList();
		model.addAttribute("EventList", EventList);
		System.out.println("asdadas"+EventList);
		return "/service/serviceEventlist.jsp";
	}
	
	@RequestMapping("/getBoardEvent.do")
	public String getBoardEvent(EventVO vo, Model model) {
		System.out.println("글 상세 보기 처리");
		System.out.println(vo);
		String event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/";
		EventVO vos =BoardService.getBoardEvent(vo);
		System.out.println("vos"+ vos);
		String filename = vos.getBoard_event_filepath().replace(event_filepath, "");
		System.out.println("vos"+ vos);
		model.addAttribute("event", vos);
		model.addAttribute("filename", filename);
		return "/service/serviceEvent.jsp";
	}
}
