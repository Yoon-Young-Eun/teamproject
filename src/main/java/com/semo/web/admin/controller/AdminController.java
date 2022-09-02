package com.semo.web.admin.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.AdminService;
import com.semo.web.admin.vo.AdminVO;

@Controller
public class AdminController {
// 영은 : 로그인, 매니저 관리
	
	@Autowired
	AdminService adminservice;
	
	@RequestMapping(value="/login.mdo", method = RequestMethod.POST)
	public String login(AdminVO vo, HttpSession session) {
		System.out.println(vo);
		System.out.println("어드민 login() 까꿍! ");
		
		AdminVO user = adminservice.getAdmin(vo);
		System.out.println(user);
		
		if(user.getAdmin_id() != null ) {
			System.out.println("로그인 성공");
			session.setAttribute("name", user.getAdmin_name());
			return "/admin/index.jsp";
		}else {
			System.out.println("로그인 실패");
			return "/admin/login.jsp";
		}	
	}
	
	@RequestMapping(value="/insertAdmin.mdo", method=RequestMethod.POST)
	public String joinAdmin(AdminVO vo) {
		System.out.println(vo);
		System.out.println("어드민 insertAdmin() 까꿍! ");
		
		adminservice.setAdmin(vo);
		
		return "memberstaff.mdo";
	}
	
	@RequestMapping(value="/memberstaff.do", method=RequestMethod.POST)
	public String memberList(Model model) {
		
		
		return "/admin/memberstaff.jsp";
	}


	
}
