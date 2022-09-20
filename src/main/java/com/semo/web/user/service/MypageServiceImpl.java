package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.dao.MypageDAO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	MypageDAO dao;
	
	// order_no > OrderMtVO 불러오기
	@Override
	public OrderMtVO ordermt(OrderVO order) {
		return dao.ordermt(order);
	}
	
	// customer_no > 주문 정보 불러오기
	@Override
	public List<OrderVO> orderlist(CustomerVO customer) {
		return dao.orderlist(customer);
	}
	
	// order_no > 주문 상세 불러오기
	@Override
	public List<OrderMtVO> orderdetail(OrderVO order) {
		return dao.orderdetail(order);
	}

	// store_no > 직영점 상세 불러오기
	@Override
	public StoreVO storedetail(OrderVO order) {
		return dao.storedetail(order);
	}

	// customer_no > 주소 목록 불러오기
	@Override
	public List<AddressListVO> addresslist(CustomerVO customer) {
		return dao.addresslist(customer);
	}

	
	

	
	

	

	
	

}
