package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
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
	
	public int getArticleCount(PagingVO pvo) {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("OrderDAO.getArticleCount",pvo);
	}
	

	public List<OrderVO> getAdminOrderList(PagingVO pvo){
		System.out.println("DAO.getAdminOrderList() 실행");
		return sqlTemplate.selectList("OrderDAO.getAdminOrderList", pvo);
	}
	
	public OrderVO getReadOrderInfo(OrderVO vo) {
	    return sqlTemplate.selectOne("OrderDAO.getReadOrderInfo", vo);
	}
	
	public List<StoreVO> getStoreList() {
	    return sqlTemplate.selectList("OrderDAO.getStoreList");
	}
	
	public void updateOrderInfo(OrderVO vo) {
		sqlTemplate.update("OrderDAO.updateOrderInfo", vo);
	}
	
//	견적서
	public List<EstimateVO> getEstimateList(PagingVO pvo){
		return sqlTemplate.selectList("OrderDAO.getEstimateList", pvo);
	}
	
	public int EstimateCount(PagingVO pvo) {
		return sqlTemplate.selectOne("OrderDAO.EstimateCount", pvo);
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
	

	public List<Estimate_ImageVO> getEstimateImg(Estimate_ImageVO vo1) {
		return sqlTemplate.selectList("OrderDAO.getEstimateImg",vo1);
	}
	
	
	public List<MessageVO> getMessageTypeList() {
		return sqlTemplate.selectList("OrderDAO.getMessageTypeList");
	}
	
}
