package com.semo.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.user.service.FaqService;
import com.semo.web.user.vo.FaqVO;

@Controller
public class FaqController {
	
	@Autowired
	FaqService faqService;

	
	@RequestMapping(value="/getFaqList.do", method = RequestMethod.GET)
	public String getFaqList(FaqVO vo,HttpSession session) {
		
		String de = "배송";
		String wa = "세탁서비스";
		System.out.println(vo);
		System.out.println("getFaqList 메서드 실행");
		List<FaqVO> faqList = faqService.getFaqList(de);
		session.setAttribute("faqList", faqList);
		List<FaqVO> faqList1 = faqService.getFaqList1(wa);
		session.setAttribute("faqList1", faqList1);
		System.out.println(faqList);
		
		return "/service/service2.jsp";
	}
}
