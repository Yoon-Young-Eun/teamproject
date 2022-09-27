package com.semo.web.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.VisitorVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class DashboardDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public int getOrderStatus(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatus", vo);
	}
	
	public int getOrderStatusEnd(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatusEnd", vo);
	}
	
	public int getOrderStatusIng(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatusIng", vo);
	}
	
	public int getOrderStatusCC(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatusCC", vo);
	}
	
	public int getEstimateStatus(EstimateVO vo) {
		return sql.selectOne("DashboardDAO.getEstimateStatus", vo);
	}
	
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
	
	//일방문자
	public int getVisitor(VisitorVO vo) {
		return sql.selectOne("DashboardDAO.getVisitor", vo);
	}
	
	
}
