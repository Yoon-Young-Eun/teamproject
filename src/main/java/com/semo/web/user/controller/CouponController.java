package com.semo.web.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.vo.CouponVO;
import com.semo.web.user.service.CustomerService;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;

@Controller
public class CouponController {

	@Autowired
	CustomerService CustomerService;
	
// 현재날짜
// 현재날짜 + 1달
// 쿠폰테이블에서 쿠폰이름 받아오기
// 쿠폰테이블에서 쿠폰가격 받아오기
// 랜덤쿠폰번호 생성

	@RequestMapping(value="/insertWelcomeCoupon.do", method=RequestMethod.GET)
	public String insertWelcomeCoupon(CouponListVO mvo, CouponVO vo,CustomerVO cvo) {
		System.out.println("웰컴 쿠폰 등록 처리");
		System.out.println(vo);
	
		CustomerService.insertWelcomeCoupon(mvo, vo, cvo);
		
		return null;
	}
	
	

}
