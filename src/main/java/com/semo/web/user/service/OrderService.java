package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

public interface OrderService {
	/*
	 * void OrderAddress(CustomerVO2 vo);
	 */
	
	List<ProductVO> getProductTop();
	List<ProductVO> getProductBottom();
	List<ProductVO> getProductOuter();
	List<ProductVO> getProductETC();
	List<ProductVO> getProductShoes();
	List<ProductVO> getProductBedding();
	List<CouponListVO> OrderCoupon(OrderVO vo);
	List<TermsVO> selectTerms();
	
	void OrderInsert(OrderVO vo);
	void OrderInsert1(OrderMtVO vo1);
	int OrderSelect(OrderVO vo);
	
	void Orderspecial(EstimateVO vo);
	void insertImage(Estimate_ImageVO vo3);
	int selectImage(EstimateVO vo);
	
<<<<<<< HEAD
	CustomerVO getReadCustomerInfo(CustomerVO vo);
=======
	CustomerVO OrderSpecial1(CustomerVO vo1);
	
	void OrderOrder(OrderVO vo);
>>>>>>> main
	
	
}
