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
	
	public OrderVO getReadOrder(OrderVO vo) {
		System.out.println("DAO.getReadOrder 실행");
		return sql.selectOne("PayDAO.getReadOrder", vo);
	}
	
	public OrderVO getPayNum(OrderVO vo) {
		System.out.println("DAO.getPayNum 실행");
		return sql.selectOne("PayDAO.getPayNum", vo);
	}
	
	public void updateOrder(OrderVO vo) {
		System.out.println("DAO.UpdateOrder 실행");
		sql.update("PayDAO.updateOrder", vo);
	}
	
	public void deletePayInfo(PayVO vo) {
		System.out.println("DAO.deletePayInfo 실행");
		sql.delete("PayDAO.deletePayInfo", vo);
	}
}
