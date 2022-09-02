package com.semo.web.admin.controller;



import java.util.List;

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
			session.setAttribute("name", user.getAdmin_no());
			return "/admin/index.jsp";
		}else {
			System.out.println("로그인 실패");
			return "/admin/login.jsp";
		}	
	}
	
	@RequestMapping(value="/insertAdmin.mdo", method=RequestMethod.GET)
	public String joinAdmin(AdminVO vo) {
		System.out.println(vo);
		System.out.println("어드민 insertAdmin() 까꿍! ");
		adminservice.setAdmin(vo);
		return "staffList.mdo";
	}
	
	@RequestMapping(value="/staffList.mdo", method=RequestMethod.GET)
	public String getMemberList(Model model, AdminVO vo) {
		System.out.println("어드민 memberList() 까꿍! ");
		List<AdminVO> adminList = adminservice.getAdminList();
		model.addAttribute("adminList", adminList);
		System.out.println(adminList);
		return "/admin/memberstaff.jsp";
	}

	@RequestMapping(value="/readStaff.mdo", method=RequestMethod.GET)
	public String getReadStaff(Model model, AdminVO vo) {	
		System.out.println("어드민 getBoard() 까꿍! ");
		model.addAttribute("adminList", adminservice.getReadStaff(vo));
		System.out.println(adminservice.getReadStaff(vo));
		return "/admin/member_staff_getboard.jsp";
	}
	
	@RequestMapping(value="/editPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, AdminVO vo) {	
		System.out.println("어드민 UpdatePage() 까꿍! ");
		
		model.addAttribute("adminList", adminservice.getReadStaff(vo));
		System.out.println(adminservice.getReadStaff(vo));
		return "/admin/member_staff_edit.jsp";
	}
	
	
	
	@RequestMapping(value="/updatestaff.mdo", method=RequestMethod.GET)
	public String updateStaff(AdminVO vo, Model model) {
		System.out.println(vo);
		System.out.println("getUpdateStaff 메서드 실행");
		adminservice.updateStaff(vo);
		System.out.println("완료!");
		return "/staffList.mdo";
	}
	
	@RequestMapping(value="/deleteStaff.mdo", method=RequestMethod.GET)
	public String deleteStaff(AdminVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteStaff 메서드 실행");
		adminservice.deleteStaff(vo);
		System.out.println("완료!");
		return "/staffList.mdo";
	}
	
}
