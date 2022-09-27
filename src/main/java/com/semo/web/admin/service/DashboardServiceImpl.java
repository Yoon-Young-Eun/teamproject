package com.semo.web.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.DashboardDAO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

@Service
public class DashboardServiceImpl implements DashboardService {

	@Autowired
	DashboardDAO DashboardDAO;
	
	// 대시보드 수거예정
	@Override
	public int getOrderStatus(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatus(vo));
		return DashboardDAO.getOrderStatus(vo);
	}
	
	// 대시보드 완료된주문
	@Override
	public int getOrderStatusEnd(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatusEnd(vo));
		return DashboardDAO.getOrderStatusEnd(vo);
	}

	// 대시보드 배달예정(세탁중)
	@Override
	public int getOrderStatusIng(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatusIng(vo));
		return DashboardDAO.getOrderStatusIng(vo);
	}
	
	// 대시보드 주문취소
	@Override
	public int getOrderStatusCC(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatusCC(vo));
		return DashboardDAO.getOrderStatusCC(vo);
	}

	// 대시보드 견적요청
	@Override
	public int getEstimateStatus(EstimateVO vo) {
		return DashboardDAO.getEstimateStatus(vo);
	}
	
	// 대시보드 문의답변
	@Override
	public int getQnAStatus(Cm_QnAVO vo) {
		return DashboardDAO.getQnAStatus(vo);
	}

	//일매출
	@Override
	public int getTodaySales(OrderVO vo) {
		return DashboardDAO.getTodaySales(vo);
	}

	// 월매출
	@Override
	public int getMonthSales(OrderVO vo) {
		return DashboardDAO.getMonthSales(vo);
	}

	// 월매출
	@Override
	public int getYearSales(OrderVO vo) {
		return DashboardDAO.getYearSales(vo);
	}
	
	// 방문자수 카운트
	@Override
	public int getVcount(CustomerVO vo) {
		return DashboardDAO.getVcount(vo);
	}


}
