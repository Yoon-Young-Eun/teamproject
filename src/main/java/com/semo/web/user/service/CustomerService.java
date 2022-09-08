package com.semo.web.user.service;

import com.semo.web.user.vo.CustomerVO;

public interface CustomerService {
	
	// 회원 정보 수집
	public CustomerVO getMember(CustomerVO vo);

	// 아이디 중복 체크
	public int idCheck(String id);
	
	// 회원 가입
	public void insertMember(CustomerVO vo);

}
