package com.semo.web.admin.dao;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> 59d6cf8ef38e3f393fac18529eea17d3fd303c5e
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;
=======
import com.semo.web.admin.vo.CouponVO;
>>>>>>> 59d6cf8ef38e3f393fac18529eea17d3fd303c5e

@Repository
public class SiteDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
<<<<<<< HEAD
	// ----------------- 쿠폰 ------------------------- //
	public void insertCoupon(CouponVO vo) {
		System.out.println("---> MyBatis로 insertCoupon() 기능 처리");
		sql.insert("SiteDAO.insertCoupon", vo);
	}
	
	public List<CouponVO> getCouponList(){
		System.out.println("DAO.getCouponList 실행");
		return sql.selectList("SiteDAO.getCouponList");
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
=======
	public void insertCoupon(CouponVO vo) {
		System.out.println("---> MyBatis로 insertCoupon() 기능 처리");
		sql.insert("CouponVO.insertCoupon", vo);
	}
	
	
	
>>>>>>> 59d6cf8ef38e3f393fac18529eea17d3fd303c5e
}
