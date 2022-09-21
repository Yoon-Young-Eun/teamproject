package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.Ad_EstimateVO;
<<<<<<< HEAD
import com.semo.web.admin.vo.Estimate_T_VO;
=======
>>>>>>> main
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.dao.MypageDAO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
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
	
	// order_no > OrderVO
	@Override
	public OrderVO ordervo(OrderVO order) {
	return dao.ordervo(order);
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
	
	// customer_no > 주소 불러오기
	@Override
	public AddressListVO addressdetail(CustomerVO customer) {
		return dao.addressdetail(customer);
	}
	
	// customer_no > 쿠폰 목록 불러오기
	@Override
	public List<CouponListVO> couponlist(CustomerVO customer) {
		return dao.couponlist(customer);
	}
	
	// customer_no > 문의 목록 불러오기
	@Override
	public List<Cm_QnAVO> asklist(CustomerVO customer) {
		return dao.asklist(customer);
	}
	
	
	// order_no count
	@Override
	public int ordercnt(CustomerVO customer) {
		return dao.ordercnt(customer);
	}
	
	@Override
	public int couponcnt(CustomerVO customer) {
		return dao.couponcnt(customer);
	}

	@Override
	public int askcnt(CustomerVO customer) {
		return dao.askcnt(customer);
	}
	
	//견적서
	//고객 견적서 상세내용
   @Override
   public EstimateVO getMyEstimate(EstimateVO vo) {
      return dao.getMyEstimate(vo);
   }
	
   @Override
   public Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo) {
      return dao.getAd_Estimate(vo);
   }

   @Override
   public List<Estimate_ImageVO> getEstimateImg(Estimate_ImageVO vo) {
      return dao.getEstimateImg(vo);
   }

<<<<<<< HEAD

	

	//견적서
	//고객 견적서 상세내용
	@Override
	public EstimateVO getMyEstimate(EstimateVO vo) {
		return dao.getMyEstimate(vo);
	}

	@Override
	public Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo) {
		return dao.getAd_Estimate(vo);
	}

	@Override
	public List<Estimate_ImageVO> getEstimateImg(Estimate_ImageVO vo) {
		return dao.getEstimateImg(vo);
	}

	//고객 견적서테이블
	@Override
	public List<EstimateVO> getmyEstimate(CustomerVO vo) {
		return dao.getmyEstimate(vo);
	}
	
=======
   //고객 견적서테이블
   @Override
   public List<EstimateVO> getmyEstimate(CustomerVO vo) {
      return dao.getmyEstimate(vo);
   }

>>>>>>> main


<<<<<<< HEAD
	
=======
>>>>>>> main

}

	

	

