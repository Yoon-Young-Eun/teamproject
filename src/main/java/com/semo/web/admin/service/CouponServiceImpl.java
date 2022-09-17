package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.CouponDAO;
import com.semo.web.user.vo.CustomerVO;


@Service
public class CouponServiceImpl implements CouponService {

	@Autowired
	CouponDAO coupon;
	
	
	@Override
	public List<CustomerVO> getBirthList() {
		return coupon.getBirthList();
	}


	@Override
	public void insertBirthCoupon(int num) {
        coupon.insertBirthCoupon(num);		
	}

}
