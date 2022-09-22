package com.semo.web.user.service;

import com.semo.web.user.vo.CustomerVO;

public interface CustomerService {
	
	// 회원 정보 수집, 로그인
	public CustomerVO getMember(CustomerVO vo);

	// 아이디 중복 체크
	public int idCheck(String id);
	
	// 회원 가입
	public void insertMember(CustomerVO vo);
	
	// 비밀번호 암호화 후 저장 (회원가입시 사용)
	public void setPasswordEncoding(CustomerVO vo);
	
	// 비밀번호 대조(로그인시 id를 통해 db에 있는 데이터 호출)
	public CustomerVO matchPasswd(CustomerVO vo);
	

}
