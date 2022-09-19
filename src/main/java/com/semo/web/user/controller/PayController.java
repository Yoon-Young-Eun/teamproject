package com.semo.web.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.admin.util.token;
import com.semo.web.user.service.PayService;
import com.semo.web.user.vo.OrderVO;
import com.semo.web.user.vo.PayVO;

@Controller
public class PayController {
	
	@Autowired
	PayService PayService;
	
//	@Autowired
//	token token;
	
	@RequestMapping("/insertPayInfo.do")
	@ResponseBody
	public String insertPayInfo(PayVO vo) {
		System.out.println("PayVO: " +vo);
		
		PayService.insertPayInfo(vo);
		System.out.println("성공");
		
		return "";
	}
	
	@RequestMapping("/getReadPay.do")
//	@ResponseBody
	public String getReadPay(Model model, PayVO vo) {	
		System.out.println(vo);
		System.out.println("getReadPay()");
		System.out.println("getReadPay 값"+PayService.getReadPay(vo));
		model.addAttribute("PayInfo", PayService.getReadPay(vo));
		System.out.println(PayService.getReadPay(vo));
		return "/refund/refund2.jsp";
	}
	
	@RequestMapping(value="/getRefund.do")
	public String getToken(OrderVO vo) throws Exception{
		System.out.println("getRefund.do 메서드");
		System.out.println("ordervo:    " +vo);
		 OrderVO ovo =  PayService.getRefundNum(vo);  
		 System.out.println("ovo:    "+ovo);
		System.out.println(ovo.getImp_uid());
		int am = ovo.getOrder_price();
		String imp = ovo.getImp_uid();
		token.getToken(imp, am);
		
		PayService.updateOrder(vo);
		System.out.println("오더브이오:      " + vo);
		return "/refund/refund3.jsp";
		// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보
		
	}

}
