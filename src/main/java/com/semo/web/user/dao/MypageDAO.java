package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
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
	
	// order_no > OrderVO
	public OrderVO ordervo (OrderVO order) {
		return sql.selectOne("MypageVO.ordervo", order);
	}
	
	// store_no > 직영점 상세 불러오기
	public StoreVO storedetail(OrderVO order) {
		System.out.println("DAO > store_no > StoreDetail");
		
		return sql.selectOne("MypageVO.storedetail", order);
	}
	
	// customer_no > 주소 목록 불러오기
	public List<AddressListVO> addresslist(CustomerVO customer) {
		System.out.println("DAO > customer_no > AddressList");
		
		return sql.selectList("MypageVO.addresslist", customer);
	}
	
	// customer_no > 주소 불러오기
	public AddressListVO addressdetail(CustomerVO customer) {
		System.out.println("DAO > customer_no > AddressDetail");
		
		return sql.selectOne("MypageVO.addresslist", customer);
	}
	
	// customer_no > 쿠폰 목록 불러오기
	public List<CouponListVO> couponlist(CustomerVO customer) {
		System.out.println("DAO > customer_no > CouponList");
		return sql.selectList("MypageVO.couponlist", customer);
	}
	
	// customer_no > 문의 목록 불러오기
	public List<Cm_QnAVO> asklist(CustomerVO customer){
		System.out.println("DAO > customer_no > AskList");
		return sql.selectList("MypageVO.asklist", customer);
	}
	
	
	
	// order_no count
	public int ordercnt(CustomerVO customer) {
		int cnt = sql.selectOne("MypageVO.ordercnt", customer);
		return cnt;
	}
	public int couponcnt(CustomerVO customer) {
		int cnt2 = sql.selectOne("MypageVO.couponcnt", customer);
		return cnt2;
	}
	public int askcnt(CustomerVO customer) {
		int cnt3 = sql.selectOne("MypageVO.askcnt", customer);
		return cnt3;
	}
	public int estimatecnt(PagingVO vo) {
		int cnt4 = sql.selectOne("MypageVO.estimatecnt", vo);
		return cnt4;
	}

	
	
	//견적서불러오기
		public EstimateVO getMyEstimate(EstimateVO vo) {
			return sql.selectOne("MypageVO.getMyEstimate", vo);
		}
		public Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo) {
			return sql.selectOne("MypageVO.getAd_Estimate", vo);
		}

		public List<Estimate_ImageVO> getEstimateImg(Estimate_ImageVO vo){
			return sql.selectList("MypageVO.getEstimateImg",vo);
		}

		public List<EstimateVO> getmyEstimate(PagingVO pvo){
			return sql.selectList("MypageVO.getmyEstimate", pvo);
		}
		public int getListCount(PagingVO pvo) {
			return sql.selectOne("MypageVO.getListCount", pvo);
		}

}
