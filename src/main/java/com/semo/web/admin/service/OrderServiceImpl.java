package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.OrderDAO;
import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;



@Service
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	OrderDAO orderDao;
	
	@Override
	public List<OrderMtVO> getUserOrderList(PagingVO pvo) {
		return orderDao.getUserOrderList(pvo);
	}
	
	@Override
	public int getArticleCount() {
		return orderDao.getArticleCount();
	}

	@Override
	public List<OrderVO> getAdminOrderList(PagingVO pvo) {
		return orderDao.getAdminOrderList(pvo);
	}

	@Override
	public int getMemberArticleCount(PagingVO pvo) {
		return orderDao.getMemberArticleCount(pvo);
	}

	
	
//	견적서
	@Override
	public List<EstimateVO> getEstimateList(EstimateVO vo) {
		return orderDao.getEstimateList(vo);
	}

	@Override
	public void insertEstimate(Ad_EstimateVO vo) {
		orderDao.insertEstimate(vo);
	}

	@Override
	public EstimateVO getEstimate(EstimateVO vo) {
		return orderDao.getEstimate(vo);
	}

	@Override
	public Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo) {
		return orderDao.getAd_Estimate(vo);
	}

	@Override
	public void updateEstimate(Ad_EstimateVO vo) {
		orderDao.updateEstimate(vo);		
	}

	@Override
	public List<Estimate_T_VO> getEstimateType() {
		return orderDao.getEstimateType();
	}
		
}
