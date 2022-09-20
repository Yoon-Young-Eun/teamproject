package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

public interface MypageService {
	
	// order_no > OrderMtVO 불러오기
	public OrderMtVO ordermt(OrderVO order);
	
	// customer_no > 주문 정보 불러오기
	public List<OrderVO> orderlist(CustomerVO customer);
	
	// order_no > 주문 상세 불러오기
	public List<OrderMtVO> orderdetail(OrderVO order);
	
	// order_no > OrderVO
	public OrderVO ordervo(OrderVO order);
	
	// store_no > 직영점 상세 불러오기
	public StoreVO storedetail(OrderVO order);
	
	// customer_no > 주소 목록 불러오기
	public List<AddressListVO> addresslist(CustomerVO customer);
	
	// customer_no > 주소 불러오기
	public AddressListVO addressdetail(CustomerVO customer);
	
	// order_no count
	public int ordercnt(CustomerVO customer);
	public int couponcnt(CustomerVO customer);
	public int askcnt(CustomerVO customer);
	
	// customer_no > 쿠폰 목록 불러오기
	public List<CouponListVO> couponlist (CustomerVO customer);

}
