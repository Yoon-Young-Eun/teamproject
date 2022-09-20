package com.semo.web.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.user.service.CustomerService;
import com.semo.web.user.service.InfoService;
import com.semo.web.user.vo.CustomerVO;

@Controller
public class InfoController {
// 회원정보 수정, 내주소관리, 쿠폰 포인트 관리
	
	@Autowired
	InfoService infoservice;
	
	//회원정보 수정 - 정보 불러오기
	@RequestMapping(value="/getCustomer.do")
	public String getCustomerInfo(CustomerVO vo, Model model) {
		System.out.println("회원정보 보기"+ vo);
		model.addAttribute("id", vo.getCustomer_no());
		CustomerVO cvo = infoservice.getCustomerInfo(vo);
		System.out.println(cvo);
		model.addAttribute("info", cvo);
		return "/MyPage/MyInfoModification.jsp";
	}
	
	//회원정보 수정
	@RequestMapping(value="/updateCustomer.do")
	public String updateCustomerInfo(CustomerVO vo) {
		System.out.println("회원정보 수정 실행");		
		infoservice.updateCustomerInfo(vo);
		return "/views-mypage/MyMain.jsp";
	}
	
	@RequestMapping(value="/deleteCustomer.do")
	public String deleteCustomer(CustomerVO vo, Model model) {
		System.out.println("회원정보 삭제");
		CustomerVO cvo = infoservice.getCustomerInfo(vo);
		System.out.println(cvo);
		model.addAttribute("info", cvo);
		infoservice.deleteCustomer(cvo);
		return "redirect:/views/main.jsp";
	}
	
	//넘버받아오기
		@RequestMapping(value="/getno.do")
		public String getno(CustomerVO vo, Model model) {
			System.out.println("넘버받아오기"+ vo);
			
			CustomerVO cvo = infoservice.getCustomerInfo(vo);
			System.out.println(cvo);
			
			model.addAttribute("info", cvo);
			System.out.println(cvo);
			return "/MyPage/PassConfirm.jsp";
		}
	
		
		  @RequestMapping(value = "/pwCheck.do", method = RequestMethod.GET)
		  @ResponseBody public int pwCheck(@RequestParam("pw") String pw, CustomerVO vo, Model model) {
	      System.out.println("pwCheck");
		  System.out.println("야야야"+vo+"&"+pw);
		  model.addAttribute("in",vo);
		  vo.setCustomer_passwd(pw);
		  System.out.println("결과값"+vo);
		  int result = infoservice.pwCheck(vo);
		  System.out.println(result);

		  
		  return result; 
		  }
		 
//	@RequestMapping(value = "/pwCheck.do", method = RequestMethod.GET)
//	public String pwCheck(Model model, CustomerVO vo) {
//		System.out.println("입력한 번호"+ vo);
//		CustomerVO vo2 = infoservice.getCustomerInfo(vo);
//		System.out.println(vo2);
//		System.out.println(vo.getCustomer_passwd());
//		System.out.println(vo2.getCustomer_passwd());
//		 if (vo.getCustomer_passwd().equals(vo2.getCustomer_passwd())) {
//				System.out.println("성공");
//				model.addAttribute("info", vo2);
//				return "/MyPage/MyInfoModification.jsp";
//		} else {
//			System.out.println("실패");
//			return "/MyPage/PassConfirm.jsp";
//		}
//	}
}
