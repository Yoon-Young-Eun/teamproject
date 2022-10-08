package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.Ad_OrderDAO;
import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;



@Service
public class Ad_OrderServiceImpl implements Ad_OrderService {

	
	@Autowired
	Ad_OrderDAO orderDao;
	
	@Override
	public List<OrderMtVO> getUserOrderList(PagingVO pvo) {
		return orderDao.getUserOrderList(pvo);
	}
	
	@Override
	public int getArticleCount(PagingVO pvo) {
		return orderDao.getArticleCount(pvo);
	}

	@Override
	public List<OrderVO> getAdminOrderList(PagingVO pvo) {
		return orderDao.getAdminOrderList(pvo);
	}

	@Override
	public int getMemberArticleCount(PagingVO pvo) {
		return orderDao.getMemberArticleCount(pvo);
	}


	@Override
	public OrderVO getReadOrderInfo(OrderVO vo) {
		return orderDao.getReadOrderInfo(vo);
	}

	@Override
	public List<StoreVO> getStoreList() {
		return orderDao.getStoreList();
	}

	@Override
	public void updateOrderInfo(OrderVO vo) {
		orderDao.updateOrderInfo(vo);
	}


	@Override
	public void updateOrderStore(OrderVO vo) {
		orderDao.updateOrderStore(vo);
		
	}

	
	@Override
	public MessageVO getMessageTitle(MessageVO mvo) {
		return orderDao.getMessageTitle(mvo);
	}
	


	
	
	
	
//	견적서
	@Override
	public List<EstimateVO> getEstimateList(PagingVO pvo) {
		return orderDao.getEstimateList(pvo);
	}
	
	@Override
	public int EstimateCount(PagingVO pvo) {
		return orderDao.EstimateCount(pvo);
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
	public Ad_EstimateVO getAd_Estimate(EstimateVO vo) {
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
	
	public List<Estimate_ImageVO> getEstimateImg(Estimate_ImageVO vo1) {
		return orderDao.getEstimateImg(vo1);
	}

}
