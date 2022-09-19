package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	// order_no > OrderMtVO 불러오기
	public OrderMtVO ordermt(OrderVO order) {
		System.out.println("DAO > order_no > OrderMtVO 불러오기");
		
		return sql.selectOne("MypageVO.orderdetail", order);
	}
	
	// customer_no > 주문 정보 불러오기
	public List<OrderVO> orderlist(CustomerVO customer){
		System.out.println("DAO > customer_no > OrderList");
		
		return sql.selectList("MypageVO.orderlist", customer);
	}
	
	// order_no > 주문 상세 불러오기
	public List<OrderMtVO> orderdetail(OrderVO order){
		System.out.println("DAO > order_no > OrderDetail");
		
		return sql.selectList("MypageVO.orderdetail", order);
	}
	
	// store_no > 직영점 상세 불러오기
	public StoreVO storedetail(OrderVO order) {
		System.out.println("DAO > store_no > StoreDetail");
		
		return sql.selectOne("MypageVO.storedetail", order);
	}
	
	// customer_no > 주소 목록 불러오기
	public List<AddressListVO> addresslist(CustomerVO customer) {
		System.out.println("DAO > store_no > AddressList");
		
		return sql.selectList("MypageVO.addresslist", customer);
	}

}
