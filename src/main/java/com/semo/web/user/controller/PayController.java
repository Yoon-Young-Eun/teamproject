package com.semo.web.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.user.service.PayService;
import com.semo.web.user.util.copy.token;
import com.semo.web.user.vo.OrderVO;
import com.semo.web.user.vo.PayVO;

@Controller
public class PayController {
	
	@Autowired
	PayService PayService;
	
	@Autowired
	token token;
	
	@RequestMapping("/insertPayInfo.do")
	@ResponseBody
	public String insertPayInfo(PayVO vo) {
		System.out.println("PayVO: " +vo);
		
		PayService.insertPayInfo(vo);
		System.out.println("성공");
		
		return "";
	}
	
	@RequestMapping("/getReadOrder.do")
//	@ResponseBody
	public String getReadOrder(Model model, OrderVO vo) {	
		System.out.println(vo);
		System.out.println("getReadOrder()");
		System.out.println("getReadOrder 값"+PayService.getReadOrder(vo));
		model.addAttribute("PayInfo", PayService.getReadOrder(vo));
		System.out.println(PayService.getReadOrder(vo));
		return "/refund/refund2.jsp";
	}
	
	@RequestMapping(value="/getRefund.do")
	public String getToken(OrderVO vo,HttpSession session) throws Exception{
		session.getAttribute("num");
		System.out.println("getRefund.do 메서드");
		System.out.println("ordervo:    " +vo);
		
		OrderVO ovo =  PayService.getPayNum(vo);
		System.out.println("ovo:    "+ovo);
		System.out.println(ovo.getImp_uid());
		int am = ovo.getOrder_price();
		String imp = ovo.getImp_uid();
		token.getToken(imp, am);
		System.out.println("업데이트오더 실행");
		System.out.println("before update order ordervo"+vo);
		PayService.updateOrder(ovo);
		System.out.println("오더브이오:      " + vo);
		return "/myorderlist.do?customer_no="+ovo.getCustomer_no();
		// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보
		
	}

}
