package com.semo.web.user.service;

import java.util.List;

import javax.activation.CommandMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
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
	
	// My Main > 최근 목록 3개만
	@Override
	public List<OrderVO> recentorder(CustomerVO customer) {
		return dao.recentorder(customer);
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
	public List<Cm_QnAVO> asklist(PagingVO vo) {
		return dao.asklist(vo);
	}
	
	// qna_no >> 문의 상세 불러오기
	@Override
	public Cm_QnAVO askdetail(Cm_QnAVO qna) {
		return dao.askdetail(qna);
	}
	
	// MyAsk : 문의글 작성 > MyAsklist : 목록으로 보내기
	@Override
	public Cm_QnAVO insertask(Cm_QnAVO qna) {
		return dao.insertask(qna);
	}
	
	// MyAskDetail : 문의글 수정
	@Override
	public Cm_QnAVO editask(Cm_QnAVO qna) {
		return dao.editask(qna);
	}

	
	// mypage order paging
	@Override
	public int myOrderCount(PagingVO vo) {
		return dao.myOrderCount(vo);
	}
	//
	@Override
	public List<OrderVO> myOrderPaging(PagingVO pvo) {
		return dao.myOrderPaging(pvo);
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
	public int askcnt(PagingVO vo) {
		return dao.askcnt(vo);
	}
	
	@Override
	public int estimatecnt(PagingVO vo) {
		return dao.estimatecnt(vo);
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

	//고객 견적서테이블
	@Override
	public List<EstimateVO> getmyEstimate(PagingVO pvo) {
		return dao.getmyEstimate(pvo);
	}

	@Override
	public int getListCount(PagingVO pvo) {
		return dao.getListCount(pvo);
	}

	@Override
	public List<ReviewVO> myReviewList(PagingVO vo) {
		
		return dao.myReviewList(vo);
	}

	@Override
	public int getReviewCount(PagingVO vo) {
		
		return dao.getReviewCount(vo);
	}
	
	@Override
	public EstimateVO updateEstimate(EstimateVO vo) {
		return dao.updateEstimate(vo);
	}

	@Override
	public ReviewVO viewReview(ReviewVO vo) {
		
		return dao.viewReview(vo);
	}

	@Override
	public CustomerVO selectask(CustomerVO customer) {
		
		return dao.selectask(customer);
	}

	@Override
	public Cm_QnAVO selectask2(Cm_QnAVO qna) {
		
		return dao.selectask2(qna);
	}

	@Override
	public CustomerVO selectCus(CustomerVO customer) {
		
		return dao.selectCus(customer);
	}

	@Override
	public void deleteQnA(Cm_QnAVO vo) {
		dao.deleteQnA(vo);
		
	}

}

	

	

