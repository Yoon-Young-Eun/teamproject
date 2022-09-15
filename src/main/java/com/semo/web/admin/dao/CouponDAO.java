package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.CustomerVO;

@Repository
public class CouponDAO {
	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public List<CustomerVO> getBirthList(){
		return sqlTemplate.selectList("CouponDAO.getBirthList");
		
	}
	
	public void insertBirthCoupon(int num) {
		System.out.println("dao"+num);
		  sqlTemplate.insert("CouponDAO.insertBirthCoupon", num);
	}

}
