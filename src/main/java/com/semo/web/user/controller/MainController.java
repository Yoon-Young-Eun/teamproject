package com.semo.web.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.service.CustomerService;
import com.semo.web.user.service.MainService;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.ReviewVO;

@Controller
public class MainController {
	
	@Autowired
	MainService MainService;
	@Autowired
	CustomerService userservice;
	
	// 메인 배너
	// 어드민 이벤트 게시판에서 등록하면 가장 마지막에 등록한 게시글의 배너 3개 출력 
	@RequestMapping("/index.do")
	public String getMain(CustomerVO cvo, EventVO vo, PagingVO pvo, ReviewVO rvo, Model model) {
		
		System.out.println("main BannerList()");
		List<EventVO> BannerList = MainService.getMain(pvo);
		model.addAttribute("BannerList", BannerList);
		System.out.println("BannerList:      "+BannerList); 
		
		System.out.println("main ReviewList()");
		List<ReviewVO> ReviewList = MainService.getMainReview();
		model.addAttribute("ReviewList", ReviewList);
		System.out.println("ReviewList:      "+ReviewList); 
		
		// 방문자수 카운트
		System.out.println("커스토머vo:   "+cvo);
		System.out.println("updateVcount 실행");
		userservice.updateVcount(cvo);
		System.out.println("커스토머vo vcount+1:   "+cvo);
		
		return "/views/main.jsp";
	}
	
}
