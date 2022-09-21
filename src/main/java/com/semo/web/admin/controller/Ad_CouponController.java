package com.semo.web.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.service.CouponService;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;

@Controller
public class Ad_CouponController {

	@Autowired
	CouponService couponService;
	
		@RequestMapping("/getBirthList.mdo")
		public void getBirthList(Model model, CouponListVO cvo) {
			System.out.println("admin BirthList()");
			List<CustomerVO> BirthList = couponService.getBirthList();
			System.out.println(BirthList);
			
			couponService.deleteEndDateCoupon(cvo);
			
			for(int i =0; i<BirthList.size(); i++) {
				System.out.println(BirthList.get(i).getCustomer_no());
				int num =BirthList.get(i).getCustomer_no();
				couponService.insertBirthCoupon(num);
			}
			
		}
		
//		@RequestMapping("/insertCoupon.mdo");
//		public void insertCoupon(List<CustomerVO> vo, CouponListVO voL) {
//			
//			System.out.println(vo);
//			System.out.println(vo.size());
//			for(int i =0; i<vo.size(); i++) {
//				
//				System.out.println(vo.get(i).getCustomer_no());
//				int num =vo.get(i).getCustomer_no();
//				couponService.insertBirthCoupon(num);
//			}
//			
//		}
	
	
}
