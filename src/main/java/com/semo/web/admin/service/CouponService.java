package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.user.vo.CustomerVO;

public interface CouponService {

	 public List<CustomerVO> getBirthList();
	 public void insertBirthCoupon(int num);
}
