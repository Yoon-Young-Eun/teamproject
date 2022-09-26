package com.semo.web.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService MainService;
	
	// 메인 배너
	// 어드민 이벤트 게시판에서 등록하면 가장 마지막에 등록한 게시글의 배너 3개 출력 
	@RequestMapping("/index.do")
	public String getMain(EventVO vo, PagingVO pvo, Model model) {
		
		System.out.println("main BannerList()");
		List<EventVO> BannerList = MainService.getMain(pvo);
		model.addAttribute("BannerList", BannerList);
		System.out.println("BannerList:      "+BannerList); 
		
		return "/views/main.jsp";
	}
	
}
