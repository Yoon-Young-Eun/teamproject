package com.semo.web.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class DashboardDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	// 대시보드 수거예정
	public int getOrderStatus(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatus", vo);
	}
	
	// 대시보드 완료된주문
	public int getOrderStatusEnd(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatusEnd", vo);
	}
	
	// 대시보드 배달예정(세탁중)
	public int getOrderStatusIng(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatusIng", vo);
	}
	
	// 대시보드 주문취소
	public int getOrderStatusCC(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatusCC", vo);
	}
	
	// 대시보드 견적요청
	public int getEstimateStatus(EstimateVO vo) {
		return sql.selectOne("DashboardDAO.getEstimateStatus", vo);
	}
	
	// 대시보드 문의답변
	public int getQnAStatus(Cm_QnAVO vo) {
		return sql.selectOne("DashboardDAO.getQnAStatus", vo);
	}
	
	// 일매출
	public int getTodaySales(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getTodaySales", vo);
	}
	
	// 월매출
	public int getMonthSales(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getMonthSales", vo);
	}
	
	// 연매출
	public int getYearSales(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getYearSales", vo);
	}
	
	// 방문자수 카운트
	public int getVcount(CustomerVO vo) {
		return sql.selectOne("DashboardDAO.getVcount", vo);
	}
	
}
