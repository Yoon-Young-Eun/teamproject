package com.semo.web.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.OrderService;
import com.semo.web.user.vo.AddressListVO;

@Controller
public class OrderController {
/*
	@Autowired
	OrderService orderservice;
	
	@RequestMapping(value="/orderAddress.do", method=RequestMethod.GET)
	public String setOrderAddress(AddressListVO vo,Model model) {
		System.out.println(vo);
		System.out.println("setOrderAddress 메서드실행");
		 orderservice.setOrderAddress(vo); 
		model.addAttribute("setOrderAddress",vo);
		System.out.println(vo);
		return "/pay/pay5.jsp";
	}
	
	
*/	
}
