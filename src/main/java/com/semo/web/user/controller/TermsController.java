package com.semo.web.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.service.TermsService;

@Controller
public class TermsController {

	@Autowired
	TermsService TermsService;
	
	@RequestMapping(value="/getTerms.do", method=RequestMethod.GET)
	public String getTerms(Model model, TermsVO vo) {	
		System.out.println("admin readTerms3()");
		model.addAttribute("Terms3", TermsService.getTerms3(vo));
		System.out.println(TermsService.getTerms3(vo));
		
		System.out.println("admin readTerms4()");
		model.addAttribute("Terms4", TermsService.getTerms4(vo));
		System.out.println(TermsService.getTerms4(vo));
		return "/terms/terms_pData.jsp";
	}
	
	@RequestMapping(value="/getTermsList.do", method=RequestMethod.GET)
	public String getTermsList(Model model) {
		System.out.println("admin getTermsList()");
		List<TermsVO> TermsList = TermsService.getTermsList();
		model.addAttribute("TermsList", TermsList);
		System.out.println(TermsList);
		return "terms/terms_all.jsp";
	}
	
}
