package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.TermsVO;

public interface SiteService {
	
	// 쿠폰
	public void insertCoupon(CouponVO vo);
	public List<CouponVO> getCouponList(PagingVO pvo);
	public CouponVO getReadCoupon(CouponVO vo);
	public void updateCoupon(CouponVO vo);
	public void deleteCoupon(int no);
	public void deleteCoupon(CouponVO vo);
	public int getCouponArticleCount(PagingVO pvo);
	
	// 배너
	public void insertBanner(BannerVO vo);
	public List<BannerVO> getBannerList();
	public BannerVO getReadBanner(BannerVO vo);
	public void updateBanner(BannerVO vo);
	public void deleteBanner(int no);
	public void deleteBanner(BannerVO vo);
	
	// 약관
	public void insertTerms(TermsVO vo);
	public List<TermsVO> getTermsList();
	public TermsVO getReadTerms(TermsVO vo);
	public void updateTerms(TermsVO vo);
	public void deleteTerms(int no);
	public void deleteTerms(TermsVO vo);
}
