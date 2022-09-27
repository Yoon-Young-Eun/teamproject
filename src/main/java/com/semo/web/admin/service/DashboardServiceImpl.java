package com.semo.web.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.DashboardDAO;
import com.semo.web.admin.vo.VisitorVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

@Service
public class DashboardServiceImpl implements DashboardService {

	@Autowired
	DashboardDAO DashboardDAO;
	
	@Override
	public int getOrderStatus(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatus(vo));
		return DashboardDAO.getOrderStatus(vo);
	}
	
	@Override
	public int getOrderStatusEnd(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatusEnd(vo));
		return DashboardDAO.getOrderStatusEnd(vo);
	}

	@Override
	public int getOrderStatusIng(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatusIng(vo));
		return DashboardDAO.getOrderStatusIng(vo);
	}
	
	@Override
	public int getOrderStatusCC(OrderVO vo) {
		System.out.println("service : "+DashboardDAO.getOrderStatusCC(vo));
		return DashboardDAO.getOrderStatusCC(vo);
	}

	@Override
	public int getEstimateStatus(EstimateVO vo) {
		return DashboardDAO.getEstimateStatus(vo);
	}

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

	
	//일방문자
	@Override
	public int getVisitor(VisitorVO vo) {
		return DashboardDAO.getVisitor(vo);
	}

}
