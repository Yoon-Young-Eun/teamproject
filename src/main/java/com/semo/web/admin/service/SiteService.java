package com.semo.web.admin.service;

<<<<<<< HEAD
import java.util.List;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;

public interface SiteService {
	
	// 쿠폰
	public void insertCoupon(CouponVO vo);
	public List<CouponVO> getCouponList();
	public CouponVO getReadCoupon(CouponVO vo);
	public void updateCoupon(CouponVO vo);
	public void deleteCoupon(CouponVO vo);
	
	// 배너
	public void insertBanner(BannerVO vo);
	public List<BannerVO> getBannerList();
	public BannerVO getReadBanner(BannerVO vo);
	public void updateBanner(BannerVO vo);
	public void deleteBanner(BannerVO vo);
	
	// 약관
	public void insertTerms(TermsVO vo);
	public List<TermsVO> getTermsList();
	public TermsVO getReadTerms(TermsVO vo);
	public void updateTerms(TermsVO vo);
	public void deleteTerms(TermsVO vo);
=======
import com.semo.web.admin.vo.CouponVO;

public interface SiteService {
	void insertCoupon(CouponVO vo);
<<<<<<< HEAD
>>>>>>> 59d6cf8ef38e3f393fac18529eea17d3fd303c5e
=======
>>>>>>> cdad325ddc8b25d497cbd58c99ce7ebaaa7a51f4
>>>>>>> main
}
