package com.semo.web.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.SiteDAO;
import com.semo.web.admin.vo.CouponVO;

@Service
public class SiteServiceImpl implements SiteService {
	@Autowired
	private SiteDAO CouponDAO;
	
	@Override
	public void insertCoupon(CouponVO vo) {
		CouponDAO.insertCoupon(vo);
	}
}
