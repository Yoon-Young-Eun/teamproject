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
	
	// 배너
	@RequestMapping("/index.do")
	public String getMain(EventVO vo, PagingVO pvo, Model model) {
		
		System.out.println("main BannerList()");
		List<EventVO> BannerList = MainService.getMain(pvo);
		model.addAttribute("BannerList", BannerList);
		System.out.println("BannerList:          "+BannerList); 
		
		return "/views/main.jsp";
	}
	
}
