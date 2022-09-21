package com.semo.web.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.user.dao.InfoDAO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class InfoServiceImpl implements InfoService{
	
	@Autowired
	InfoDAO infoDAO;

	
	//내정보수정
	@Override
	public CustomerVO getCustomerInfo(CustomerVO vo) {
		return infoDAO.getCustomerInfo(vo);
	}

	@Override
	public void updateCustomerInfo(CustomerVO vo) {
		infoDAO.updateCustomerInfo(vo);
	}

	@Override
	public void deleteCustomer(CustomerVO vo) {
		infoDAO.deleteCustomer(vo);
	}

	@Override
	public int pwCheck(CustomerVO vo) {
		return infoDAO.pwCheck(vo);
	}
	
}
