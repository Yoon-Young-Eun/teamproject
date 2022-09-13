package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.OrderMtVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

public interface OrderService {
	public List<OrderMtVO> getUserOrderList(PagingVO pvo);
	public int getArticleCount();
	public List<OrderVO> getAdminOrderList(PagingVO pvo);
	public int getMemberArticleCount(PagingVO pvo);
	
//	견적서
	public List<EstimateVO> getEstimateList(EstimateVO vo);
	public void insertEstimate(Ad_EstimateVO vo);
	public void updateEstimate(Ad_EstimateVO vo);
	EstimateVO getEstimate(EstimateVO vo);
	Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo);
	public List<Estimate_T_VO> getEstimateType();
}
