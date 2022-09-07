package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.SiteDAO;
import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;

@Service
public class SiteServiceImpl implements SiteService {
	@Autowired
	private SiteDAO SiteDAO;
	
	// ----------------- 쿠폰 ------------------------- //
	@Override
	public void insertCoupon(CouponVO vo) {
		SiteDAO.insertCoupon(vo);
	}

	@Override
	public List<CouponVO> getCouponList() {
		return SiteDAO.getCouponList();
	}

	@Override
	public CouponVO getReadCoupon(CouponVO vo) {
		return SiteDAO.getReadCoupon(vo);
	}
	
	@Override
	public void updateCoupon(CouponVO vo) {
		SiteDAO.updateCoupon(vo);
	}
	
	@Override
	public void deleteCoupon(CouponVO vo) {
		SiteDAO.deleteCoupon(vo);
	}
	
	@Override
	public void deleteCoupon(int no) {
		SiteDAO.deleteCoupon(no);
	}
	
	
	// ----------------- 배너 ------------------------- //
	@Override
	public void insertBanner(BannerVO vo) {
		SiteDAO.insertBanner(vo);
		
	}

	@Override
	public List<BannerVO> getBannerList() {
		return SiteDAO.getBannerList();
	}

	@Override
	public BannerVO getReadBanner(BannerVO vo) {
		return SiteDAO.getReadBanner(vo);
	}

	@Override
	public void updateBanner(BannerVO vo) {
		SiteDAO.updateBanner(vo);
	}

	@Override
	public void deleteBanner(BannerVO vo) {
		SiteDAO.deleteBanner(vo);	
	}
	
	@Override
	public void deleteBanner(int no) {
		SiteDAO.deleteBanner(no);	
	}

	
	// ----------------- 약관 ------------------------- //
	@Override
	public void insertTerms(TermsVO vo) {
		SiteDAO.insertTerms(vo);
	}

	@Override
	public List<TermsVO> getTermsList() {
		return SiteDAO.getTermsList();
	}

	@Override
	public TermsVO getReadTerms(TermsVO vo) {
		return SiteDAO.getReadTerms(vo);
	}

	@Override
	public void updateTerms(TermsVO vo) {
		SiteDAO.updateTerms(vo);
		
	}

	@Override
	public void deleteTerms(TermsVO vo) {
		SiteDAO.deleteTerms(vo);
		
	}

	@Override
	public void deleteTerms(int no) {
		SiteDAO.deleteTerms(no);
	}

}
