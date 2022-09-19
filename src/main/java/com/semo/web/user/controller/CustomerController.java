package com.semo.web.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.user.service.CustomerService;
import com.semo.web.user.vo.CustomerVO;



@Controller
public class CustomerController {
	
	@Autowired
	CustomerService userservice;

	// 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(CustomerVO vo, Model model, HttpSession session) {

		System.out.println(vo);
		System.out.println("login method");

		CustomerVO vo2 = userservice.getMember(vo);
		System.out.println(userservice.getMember(vo));
		
		model.addAttribute("user", vo2);
		model.addAttribute("id", vo2);
		System.out.println(vo2);
		if (vo2 != null) {
			System.out.println("로그인!");
			model.addAttribute("user", vo2);
			session.setAttribute("user_name", vo2.getCustomer_name());
			session.setAttribute("id", vo2.getCustomer_id());
			session.setAttribute("num", vo2.getCustomer_no());
			return "/views/logined-main.jsp";

		} else {
			System.out.println("로그인 실패");
			return "/views/login.jsp";
		}
		
		
	}

	// 로그아웃
	@RequestMapping(value = "/logout.do", method = RequestMethod.POST)
	public String logout(HttpSession session, Model model, CustomerVO vo) {

		session.invalidate();
		System.out.println("정상적인 로그아웃");
		return "/views/main.jsp";
	}

	// 아이디 중복 체크
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("id") String id, CustomerVO vo, Model model) {
		System.out.println("idCheck");

		int result = userservice.idCheck(id);

		System.out.println(vo);

		return result;
	}
	

	// 회원가입 완료 페이지 이동
	@RequestMapping(value = "/complete.do", method = RequestMethod.GET)
	public String join(CustomerVO vo, HttpSession session, Model model) {
		System.out.println(vo);
		System.out.println("join check");
		userservice.insertMember(vo);
		model.addAttribute("user", vo.getCustomer_name());
		System.out.println(vo.getCustomer_name());
		return "/views/complete.jsp";
	}
	
	
	

}
