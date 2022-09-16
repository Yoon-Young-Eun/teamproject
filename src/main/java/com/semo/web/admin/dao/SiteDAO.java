package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.TermsVO;

@Repository
public class SiteDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	// ----------------- 쿠폰 ------------------------- //
	public void insertCoupon(CouponVO vo) {
		System.out.println("---> MyBatis로 insertCoupon() 기능 처리");
		sql.insert("SiteDAO.insertCoupon", vo);
	}
	
	public List<CouponVO> getCouponList(PagingVO pvo){
		System.out.println("DAO.getCouponList 실행");
		return sql.selectList("SiteDAO.getCouponList", pvo);
	}
	
	public int getCouponArticleCount(PagingVO pvo) {
		return sql.selectOne("SiteDAO.getCouponArticleCount", pvo);
	}
	
	public CouponVO getReadCoupon(CouponVO vo) {
		System.out.println("DAO.getReadCoupon 실행");
		return sql.selectOne("SiteDAO.getReadCoupon", vo);
	}
	
	public void updateCoupon(CouponVO vo) {
		System.out.println("DAO.getUpdateCoupon 실행");
		sql.update("SiteDAO.updateCoupon", vo);
	}
	
	public void deleteCoupon(CouponVO vo) {
		System.out.println("DAO.deleteCoupon 실행");
		sql.delete("SiteDAO.deleteCoupon", vo);
	}
	
	public void deleteCoupon(int no) {
		System.out.println("DAO.deleteCoupon 실행");
		sql.delete("SiteDAO.deleteCoupon",no);
	}
	
	// ----------------- 배너 ------------------------- //
	public void insertBanner(BannerVO vo) {
		System.out.println("---> MyBatis로 insertBanner() 기능 처리");
		sql.insert("SiteDAO.insertBanner", vo);
	}
	
	public List<BannerVO> getBannerList(){
		System.out.println("DAO.getBannerList 실행");
		return sql.selectList("SiteDAO.getBannerList");
	}
	
	public BannerVO getReadBanner(BannerVO vo) {
		System.out.println("DAO.getReadBanner 실행");
		return sql.selectOne("SiteDAO.getReadBanner", vo);
	}
	
	public void updateBanner(BannerVO vo) {
		System.out.println("DAO.getUpdateBanner 실행");
		sql.update("SiteDAO.updateBanner", vo);
	}
	
	public void deleteBanner(BannerVO vo) {
		System.out.println("DAO.deleteBanner 실행");
		sql.delete("SiteDAO.deleteBanner", vo);
	}
	
	public void deleteBanner(int no) {
		System.out.println("DAO.deleteBanner 실행");
		sql.delete("SiteDAO.deleteBanner", no);
	}
	
	// ----------------- 약관 ------------------------- //
	public void insertTerms(TermsVO vo) {
		System.out.println("---> MyBatis로 insertTerms() 기능 처리");
		sql.insert("SiteDAO.insertTerms", vo);
	}
	
	public List<TermsVO> getTermsList(){
		System.out.println("DAO.getTermsList 실행");
		return sql.selectList("SiteDAO.getTermsList");
	}
	
	public TermsVO getReadTerms(TermsVO vo) {
		System.out.println("DAO.getReadTerms 실행");
		return sql.selectOne("SiteDAO.getReadTerms", vo);
	}
	
	public void updateTerms(TermsVO vo) {
		System.out.println("DAO.getUpdateTerms 실행");
		sql.update("SiteDAO.updateTerms", vo);
	}
	
	public void deleteTerms(TermsVO vo) {
		System.out.println("DAO.deleteTerms 실행");
		sql.delete("SiteDAO.deleteTerms", vo);
	}
	
	public void deleteTerms(int no) {
		System.out.println("DAO.deleteTerms 실행");
		sql.delete("SiteDAO.deleteTerms", no);
	}
}
