package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
=======
import com.semo.web.admin.vo.OrderMtVO;
import com.semo.web.admin.vo.Ad_EstimateVO;
>>>>>>> main
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.PagingVO;
<<<<<<< HEAD
import com.semo.web.user.vo.OrderMtVO;
=======
import com.semo.web.user.vo.EstimateVO;
>>>>>>> main
import com.semo.web.user.vo.OrderVO;

@Repository
public class OrderDAO {

	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	
	public int getMemberArticleCount(PagingVO pvo) {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("OrderDAO.getMemberArticleCount", pvo);
	}
	
	
	public List<OrderMtVO> getUserOrderList(PagingVO pvo){
		System.out.println("DAO.getUserOrderList() 실행");
		return sqlTemplate.selectList("OrderDAO.getUserOrderList", pvo);
	}
	
	public int getArticleCount() {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("OrderDAO.getArticleCount");
	}
	

	public List<OrderVO> getAdminOrderList(PagingVO pvo){
		System.out.println("DAO.getAdminOrderList() 실행");
		return sqlTemplate.selectList("OrderDAO.getAdminOrderList", pvo);
	}
	
//	견적서
	public List<EstimateVO> getEstimateList(EstimateVO vo){
		return sqlTemplate.selectList("OrderDAO.getEstimateList", vo);
	}
	
	public void insertEstimate(Ad_EstimateVO vo) {
		sqlTemplate.insert("OrderDAO.insertEstimate", vo);
	}
	
	public void updateEstimate(Ad_EstimateVO vo) {
		sqlTemplate.update("OrderDAO.updateEstimate", vo);
	}
	
	public EstimateVO getEstimate(EstimateVO vo) {
		return sqlTemplate.selectOne("OrderDAO.getEstimate", vo);
	}
	
	public Ad_EstimateVO getAd_Estimate(Ad_EstimateVO vo) {
		return sqlTemplate.selectOne("OrderDAO.getAd_Estimate", vo);
	}
	
	public List<Estimate_T_VO> getEstimateType() {
		return sqlTemplate.selectList("OrderDAO.getEstimateType");
	}
}
