package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

public interface OrderService {
	public List<OrderMtVO> getUserOrderList(PagingVO pvo);
	public int getArticleCount(PagingVO pvo);
	public List<OrderVO> getAdminOrderList(PagingVO pvo);
	public int getMemberArticleCount(PagingVO pvo);
	public OrderVO getReadOrderInfo(OrderVO vo);
	public List<StoreVO> getStoreList();
	public void updateOrderInfo(OrderVO vo);

//	견적서
	public List<EstimateVO> getEstimateList(PagingVO pvo);
	int EstimateCount(PagingVO pvo);
	public void insertEstimate(Ad_EstimateVO vo);
	public void updateEstimate(Ad_EstimateVO vo);
	EstimateVO getEstimate(EstimateVO vo);
	Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo);
	public List<Estimate_T_VO> getEstimateType();
	public List<Estimate_ImageVO> getEstimateImg();
}
