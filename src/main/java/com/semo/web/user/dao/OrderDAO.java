package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class OrderDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessiontemplate;

	/*
	 * public void OrderAddress(CustomerVO2 vo) {
	 * sqlSessiontemplate.insert("OrderDAOuser.OrderAddress",vo); }
	 */
	
	public List<ProductVO> getProductTop(){
		return sqlSessiontemplate.selectList("OrderDAOuser.getProductTop");
	}
	public List<ProductVO> getProductBottom(){
		return sqlSessiontemplate.selectList("OrderDAOuser.getProductBottom");
	}
	public List<ProductVO> getProductOuter(){
		return sqlSessiontemplate.selectList("OrderDAOuser.getProductOuter");
	}
	public List<ProductVO> getProductETC(){
		return sqlSessiontemplate.selectList("OrderDAOuser.getProductETC");
	}
	public List<ProductVO> getProductShoes(){
		return sqlSessiontemplate.selectList("OrderDAOuser.getProductShoes");
	}
	public List<ProductVO> getProductBedding(){
		return sqlSessiontemplate.selectList("OrderDAOuser.getProductBedding");
	}
	public List<CouponListVO> OrderCoupon(OrderVO vo) {
		return sqlSessiontemplate.selectList("OrderDAOuser.OrderCoupon",vo);
	}
	public List<TermsVO> selectTerms() {
		return sqlSessiontemplate.selectList("OrderDAOuser.selectTerms");
	}
	public void OrderInsert(OrderVO vo) {
		sqlSessiontemplate.insert("OrderDAOuser.OrderInsert",vo);
	}
	public void OrderInsert1(OrderMtVO vo1) {
		sqlSessiontemplate.insert("OrderDAOuser.OrderInsert1",vo1);
	}
	public int OrderSelect(OrderVO vo) {
		return sqlSessiontemplate.selectOne("OrderDAOuser.OrderSelect",vo);
	}
	public void Orderspecial(EstimateVO vo) {
		sqlSessiontemplate.insert("OrderDAOuser.Orderspecial",vo);
	}
	public void insertImage(Estimate_ImageVO vo3) {
		sqlSessiontemplate.insert("OrderDAOuser.insertImage",vo3);
	}
	public int selectImage(EstimateVO vo) {
		return sqlSessiontemplate.selectOne("OrderDAOuser.selectImage",vo);
	}

	public CustomerVO getReadCustomerInfo(CustomerVO vo) {
		System.out.println("DAO.getReadCustomerInfo ??????");
		return sqlSessiontemplate.selectOne("OrderDAOuser.getReadCustomerInfo", vo);
	}
	
	public EstimateVO OrderSpecial1(EstimateVO vo2) {
		return sqlSessiontemplate.selectOne("OrderDAOuser.OrderSpecial1",vo2);
	}
	
	public void OrderOrder(OrderVO vo) {
		sqlSessiontemplate.insert("OrderDAOuser.OrderOrder",vo);

	}
	public void deleteCoupon(CouponListVO cou) {
		sqlSessiontemplate.delete("OrderDAOuser.deleteCoupon",cou);
	}
	public Ad_EstimateVO selectEstimate(Ad_EstimateVO vo4) {
		return sqlSessiontemplate.selectOne("OrderDAOuser.selectEstimate",vo4);
	}
	public Ad_EstimateVO selectEstimate2(Ad_EstimateVO esti) {
		return sqlSessiontemplate.selectOne("OrderDAOuser.selectEstimate2", esti);
	}
	
	public void updateEst(EstimateVO evo) {
		sqlSessiontemplate.selectOne("OrderDAOuser.updateEst", evo);
	}
	
	// ?????? ??????
	public OrderVO getReadReviewPop(OrderVO vo) {
		return sqlSessiontemplate.selectOne("OrderDAOuser.getReadReviewPop",vo);
	}
	
	// ?????? ?????? ????????????
	public void updateReviewStatus(OrderVO vo) {
		System.out.println("DAO.updateReviewStatus ??????");
		sqlSessiontemplate.update("OrderDAOuser.updateReviewStatus",vo);
	}
}
