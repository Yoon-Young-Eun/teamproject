package com.semo.web.user.service;

import com.semo.web.user.vo.CustomerVO;

public interface InfoService {
	
	//내정보수정
	CustomerVO getCustomerInfo(CustomerVO vo);
	void updateCustomerInfo(CustomerVO vo);
	void deleteCustomer(CustomerVO vo);
	
	//비밀번호 확인
	public int pwCheck(CustomerVO vo);
}
