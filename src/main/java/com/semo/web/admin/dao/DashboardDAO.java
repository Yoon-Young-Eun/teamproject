package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class DashboardDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	// 대시보드 수거예정
	public int getOrderStatus(OrderVO vo) {
		return sql.selectOne("DashboardDAO.getOrderStatus", vo);
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
	public Integer getTodaySales() {
		return sql.selectOne("DashboardDAO.getTodaySales");
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
	
	// Area Chart
	public List<OrderMtVO> getMainBoardArea(){
		return sql.selectList("DashboardDAO.getMainBoardArea");
	}
	
	// Bar Chart
	public List<OrderVO> getMainBoardBar(){
		return sql.selectList("DashboardDAO.getMainBoardBar");
	}
	
	// Doughnut Chart
	public List<OrderMtVO> getMainBoardDoughnut(){
		return sql.selectList("DashboardDAO.getMainBoardDoughnut");
	}
	

}
