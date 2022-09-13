package com.semo.web.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.user.dao.CustomerDAO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	CustomerDAO dao;
	

	// 회원 정보 수집, 로그인
	@Override
	public CustomerVO getMember(CustomerVO vo) {
		return dao.getUser(vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idCheck(String id){
		return dao.idCheck(id);
		
	}
	
	// 회원가입
	@Override
	public void insertMember(CustomerVO vo) {
		dao.insertUser(vo);
	}

}
