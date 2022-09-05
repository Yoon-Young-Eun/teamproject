package com.semo.web.admin.service;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> cdad325ddc8b25d497cbd58c99ce7ebaaa7a51f4
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.SiteDAO;
<<<<<<< HEAD
import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;
=======
import com.semo.web.admin.vo.CouponVO;
>>>>>>> cdad325ddc8b25d497cbd58c99ce7ebaaa7a51f4

@Service
public class SiteServiceImpl implements SiteService {
	@Autowired
<<<<<<< HEAD
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
	
=======
	private SiteDAO CouponDAO;
	
	@Override
	public void insertCoupon(CouponVO vo) {
		CouponDAO.insertCoupon(vo);
	}
>>>>>>> cdad325ddc8b25d497cbd58c99ce7ebaaa7a51f4
}
