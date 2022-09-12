package com.semo.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.vo.FAQVO;
import com.semo.web.user.service.FaqService;

@Controller
public class FaqController {
	
	@Autowired
	FaqService faqService;

	
	@RequestMapping(value="/getFaqList.do", method = RequestMethod.GET)
	public String getFaqList(FAQVO vo,HttpSession session) {
		
		String de = "배송";
		String wa = "세탁";
		System.out.println(vo);
		System.out.println("getFaqList 메서드 실행");
		List<FAQVO> faqList = faqService.getFaqList(de);
		session.setAttribute("faqList", faqList);
		List<FAQVO> faqList1 = faqService.getFaqList1(wa);
		session.setAttribute("faqList1", faqList1);
		System.out.println("aaaa"+faqList);
		System.out.println("bbbb"+faqList1);
		return "/service/serviceFAQ.jsp";
	}
}
