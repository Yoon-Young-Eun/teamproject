package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.CustomerVO;

@Repository
public class InfoDAO {
	
	@Autowired
	SqlSessionTemplate sql;
	
	public CustomerVO getCustomerInfo(CustomerVO vo) {
		return sql.selectOne("CustomerVO.getCustomerInfo", vo);
	}
	
	public void updateCustomerInfo(CustomerVO vo) {
		sql.update("CustomerVO.updateCustomerInfo", vo);
	}
	
	public void deleteCustomer(CustomerVO vo) {
		sql.delete("CustomerVO.deleteCustomer", vo);
	}
	
	//비밀번호 확인
	public int pwCheck(CustomerVO vo){
		int result = 0; 
		result = sql.selectOne("CustomerVO.pwCheck", vo);
		return result;
	}
}
