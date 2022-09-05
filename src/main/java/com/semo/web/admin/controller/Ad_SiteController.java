package com.semo.web.admin.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.service.SiteService;
import com.semo.web.admin.vo.CouponVO;

@Controller
public class Ad_SiteController {
	 // 쿠폰, 베너, 약관
	@Autowired
	private SiteService CouponService;
	
	@RequestMapping("/insertCoupon.do")
	public String insertCoupon(CouponVO vo) throws IOException {
		System.out.println("쿠폰 등록 처리");
		System.out.println(vo);
		
		
		Date date = vo.getCoupon_start_date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
		String dateString = format.format(date);
        
		
		System.out.println(dateString);
		

		CouponService.insertCoupon(vo);
		System.out.println();
		
		return "insertCoupon.jsp";
	}
}
