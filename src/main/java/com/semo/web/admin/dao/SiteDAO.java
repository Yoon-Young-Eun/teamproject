package com.semo.web.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.CouponVO;

@Repository
public class SiteDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	public void insertCoupon(CouponVO vo) {
		System.out.println("---> MyBatis로 insertCoupon() 기능 처리");
		sql.insert("CouponVO.insertCoupon", vo);
	}
	
	
	
}
