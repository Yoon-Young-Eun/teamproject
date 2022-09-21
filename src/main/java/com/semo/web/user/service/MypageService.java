package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
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
	
	// customer_no > 문의 목록 불러오기
	public List<Cm_QnAVO> asklist(CustomerVO customer);
	
	
	//특수세탁 견적서
    public EstimateVO getMyEstimate(EstimateVO vo);
    public Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo);
    public List<Estimate_ImageVO> getEstimateImg(Estimate_ImageVO vo);
    public List<EstimateVO> getmyEstimate(CustomerVO vo);

}