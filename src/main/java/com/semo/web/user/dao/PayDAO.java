package com.semo.web.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.CouponVO;
import com.semo.web.user.vo.OrderVO;
import com.semo.web.user.vo.PayVO;

@Repository
public class PayDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	public void insertPayInfo(PayVO vo) {
		System.out.println("---> MyBatis로 insertPayInfo() 기능 처리");
		sql.insert("PayDAO.insertPayInfo", vo);
	}
	
	public PayVO getReadPay(PayVO vo) {
		System.out.println("DAO.getReadPay 실행");
		return sql.selectOne("PayDAO.getReadPay", vo);
	}
	
	public OrderVO getRefundNum(OrderVO vo) {
		System.out.println("DAO.getRefundNum 실행");
		return sql.selectOne("PayDAO.getRefundNum", vo);
	}
	
	public void updateOrder(OrderVO vo) {
		System.out.println("DAO.getUpdateOrder 실행");
		sql.update("PayDAO.updateOrder", vo);
	}
}
