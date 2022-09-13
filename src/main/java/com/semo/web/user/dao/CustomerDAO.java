package com.semo.web.user.dao;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.CustomerVO;

@Repository
public class CustomerDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	//회원 정보 수집, 로그인
	public CustomerVO getUser(CustomerVO vo){
		System.out.println("CustoemrDAO ");
		CustomerVO vo1 = sql.selectOne("CustomerVO.getMember", vo);
		return vo1;
	}
	
	//아이디 중복 체크
	public int idCheck(String id){
		int result = 0; 
		result = sql.selectOne("CustomerVO.idCheck", id);
		return result;
	}
	
	// 회원가입 승인
	public void insertUser(CustomerVO vo) {
		System.out.println("CustomerDAO");
	 sql.insert("CustomerVO.insertMember", vo);
	}
	

}
