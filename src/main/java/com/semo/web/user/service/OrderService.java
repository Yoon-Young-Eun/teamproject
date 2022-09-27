package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.FAQVO;
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
	

	CustomerVO getReadCustomerInfo(CustomerVO vo);

	EstimateVO OrderSpecial1(EstimateVO vo2);
	
	void OrderOrder(OrderVO vo);

	void deleteCoupon(CouponListVO cou);

	Ad_EstimateVO selectEstimate(Ad_EstimateVO vo4);
	
	Ad_EstimateVO selectEstimate2(Ad_EstimateVO esti);
	
	public void updateEst(EstimateVO evo);
	
	// 리뷰 팝업
	public OrderVO getReadReviewPop(OrderVO vo);
	
	// 리뷰 상태 업데이트
	public void updateReviewStatus(OrderVO vo);
}
