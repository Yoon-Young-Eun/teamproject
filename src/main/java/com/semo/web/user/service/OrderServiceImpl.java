package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.dao.OrderDAO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDAO orderdao;

	@Override
	public List<ProductVO> getProductTop() {
		
		return orderdao.getProductTop();
	}

	@Override
	public List<ProductVO> getProductBottom() {
		
		return orderdao.getProductBottom();
	}

	@Override
	public List<ProductVO> getProductOuter() {
		return  orderdao.getProductOuter();
	}

	@Override
	public List<ProductVO> getProductETC() {
		return  orderdao.getProductETC();
	}

	@Override
	public List<ProductVO> getProductShoes() {
		return  orderdao.getProductShoes();
	}

	@Override
	public List<ProductVO> getProductBedding() {
		return  orderdao.getProductBedding();
	}

	@Override
	public List<CouponListVO> OrderCoupon(OrderVO vo) {
		
		return orderdao.OrderCoupon(vo);
	}

	@Override
	public List<TermsVO> selectTerms() {
		
		return orderdao.selectTerms();
	}

	@Override
	public void OrderInsert(OrderVO vo) {
		
		orderdao.OrderInsert(vo);
		
	}

	@Override
	public void OrderInsert1(OrderMtVO vo1) {
		orderdao.OrderInsert1(vo1);
		
	}

	@Override
	public int OrderSelect(OrderVO vo) {
		
		return orderdao.OrderSelect(vo);
	}

	
	


	
	

}
