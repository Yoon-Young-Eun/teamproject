package com.semo.web.admin.service;

import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderVO;

public interface DashboardService {
	public int getOrderStatus(OrderVO vo);
	public int getOrderStatusEnd(OrderVO vo);
	public int getOrderStatusIng(OrderVO vo);
	public int getOrderStatusCC(OrderVO vo);
	public int getEstimateStatus(EstimateVO vo);
	public int getQnAStatus(Cm_QnAVO vo);
	public int getVcount(CustomerVO vo);
	
	public int getTodaySales(OrderVO vo);
	public int getMonthSales(OrderVO vo);
	public int getYearSales(OrderVO vo);
}
