package com.semo.web.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.service.DashboardService;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.VisitorVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class Ad_DashboardController {

	@Autowired
	DashboardService DashboardService;
	
	@RequestMapping("/index.mdo")
	public String getOrderStatus(Model model, OrderVO vo, EstimateVO evo, Cm_QnAVO cvo, VisitorVO vvo,HttpSession session) {	
		
		//세션 유무확인 HttpSession session
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("admin getOrderStatus()"+DashboardService.getOrderStatus(vo));
		model.addAttribute("OrderInfo", DashboardService.getOrderStatus(vo));
		System.out.println(DashboardService.getOrderStatus(vo));
		
		System.out.println("admin getOrderStatus()"+DashboardService.getOrderStatusEnd(vo));
		model.addAttribute("OrderInfoEnd", DashboardService.getOrderStatusEnd(vo));
		System.out.println(DashboardService.getOrderStatusEnd(vo));
		
		System.out.println("admin getOrderStatus()"+DashboardService.getOrderStatusIng(vo));
		model.addAttribute("OrderInfoIng", DashboardService.getOrderStatusIng(vo));
		System.out.println(DashboardService.getOrderStatusIng(vo));
		
		System.out.println("admin getOrderStatus()"+DashboardService.getOrderStatusCC(vo));
		model.addAttribute("OrderInfoCC", DashboardService.getOrderStatusCC(vo));
		System.out.println(DashboardService.getOrderStatusCC(vo));
		
		System.out.println("admin getEstimateStatus()");
		model.addAttribute("EstimateInfo", DashboardService.getEstimateStatus(evo));
		System.out.println(DashboardService.getEstimateStatus(evo));
		
		System.out.println("admin getQnAStatus()");
		model.addAttribute("QnAInfo", DashboardService.getQnAStatus(cvo));
		System.out.println(DashboardService.getQnAStatus(cvo));
		
		// 일매출
		System.out.println("admin getTodaySales()"+DashboardService.getTodaySales(vo));
		model.addAttribute("OrderTodaySales", DashboardService.getTodaySales(vo));
		System.out.println(DashboardService.getTodaySales(vo));
		
		// 월매출
		System.out.println("admin getMonthSales()"+DashboardService.getMonthSales(vo));
		model.addAttribute("OrderMonthSales", DashboardService.getMonthSales(vo));
		System.out.println(DashboardService.getMonthSales(vo));
		
		// 연매출
		System.out.println("admin getYearSales()"+DashboardService.getYearSales(vo));
		model.addAttribute("OrderYearSales", DashboardService.getYearSales(vo));
		System.out.println(DashboardService.getYearSales(vo));
		
		
		//일방문자
		System.out.println("일방문자수"+DashboardService.getVisitor(vvo));
		model.addAttribute("getVisitor",DashboardService.getVisitor(vvo));
		return "/admin/index.jsp";
	}
	
}
