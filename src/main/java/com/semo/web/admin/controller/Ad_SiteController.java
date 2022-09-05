package com.semo.web.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.semo.web.admin.service.SiteService;
import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.amazon.s3.AwsS3;


@Controller
public class Ad_SiteController {
	// 쿠폰, 배너, 약관
	
	@Autowired
	private SiteService SiteService;
	public AwsS3 awss3 = AwsS3.getInstance();
	
	// 쿠폰 등록
	@RequestMapping(value="/insertCoupon.mdo", method=RequestMethod.GET)
	public String insertCoupon(CouponVO vo) {
		System.out.println("쿠폰 등록 처리");
		System.out.println(vo);
		
		SiteService.insertCoupon(vo);
		System.out.println();
		
		return "/CouponList.mdo";
	}
	      
	// 쿠폰 목록
	@RequestMapping(value="/CouponList.mdo", method=RequestMethod.GET)
	public String getCouponList(Model model) {
		System.out.println("admin couponList()");
		List<CouponVO> CouponList = SiteService.getCouponList();
		model.addAttribute("CouponList", CouponList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(CouponList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/promo_couponlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 쿠폰 상세
	@RequestMapping(value="/readCoupon.mdo", method=RequestMethod.GET)
	public String getReadCoupon(Model model, CouponVO vo) {	
		System.out.println("admin readCoupon()");
		model.addAttribute("CouponInfo", SiteService.getReadCoupon(vo));
		System.out.println(SiteService.getReadCoupon(vo));
		return "/admin/promo_coupon.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// 쿠폰 수정 페이지
	@RequestMapping(value="/updatePage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, CouponVO vo) {	
		System.out.println("updatePage()");
		model.addAttribute("CouponInfo", SiteService.getReadCoupon(vo));
		System.out.println(SiteService.getReadCoupon(vo));
		return "/admin/promo_coupon_edit.jsp";
	}
	
	
	// 쿠폰 수정
	@RequestMapping(value="/updateCoupon.mdo", method=RequestMethod.GET)
	public String updateCoupon(CouponVO vo, Model model) {
		System.out.println(vo);
		System.out.println("getUpdateCoupon 메서드 실행");
		SiteService.updateCoupon(vo); // update는 리턴값 없음
		System.out.println("완료!");
		return "/CouponList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 CouponList.mdo로 보내서 
	}
	
	// 쿠폰 삭제 (아직 체크박스를 눌러 삭제하는 기능은 구현 못함)
	@RequestMapping(value="/deleteCoupon.mdo", method=RequestMethod.GET)
	public String deleteCoupon(CouponVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteCoupon 메서드 실행");
		SiteService.deleteCoupon(vo);
		System.out.println("완료!");
		return "/CouponList.mdo";
	}
	
	
	// ------------------------------------------------------------------------------------------------- //
	
	
	// 배너 등록
	@RequestMapping(value="/insertBanner.mdo", method=RequestMethod.GET)
	public String insertBanner() {
		return "/admin/promo_banner_insert.jsp";
	}
	
	@RequestMapping("/bannerUpload.mdo")
	public String bannerUpload(BannerVO vo, MultipartFile banner) throws IOException, SQLException {
		// aws s3 파일 업로드 처리 */
		InputStream is = banner.getInputStream();
		String key = banner.getOriginalFilename();
		String contentType = banner.getContentType();
		long contentLength = banner.getSize();
		
		String bucket = "semoproject/img/banner";
		
		awss3.upload(is, key, contentType, contentLength, bucket);
		String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/img/banner/" + key;
		vo.setBanner_filepath(banner_filepath);
		
		SiteService.insertBanner(vo);
		
		return "redirect:/BannerList.mdo";
	}
	
	// 배너 목록
	@RequestMapping(value="/BannerList.mdo", method=RequestMethod.GET)
	public String getBannerList(Model model) {
		System.out.println("admin BannerList()");
		String result;
		List<BannerVO> BannerList = SiteService.getBannerList();
		model.addAttribute("BannerList", BannerList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(BannerList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/promo_bannerlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 배너 상세
	@RequestMapping(value="/readBanner.mdo", method=RequestMethod.GET)
	public String getReadBanner(Model model, BannerVO vo) {	
		System.out.println("admin readBanner()");
		BannerVO ba = SiteService.getReadBanner(vo);
		String result;
			model.addAttribute("BannerInfo", ba);
			if(ba.isBanner_usable() == true) {
				result = "공개";
			}
			else {
				result = "비공개";
			}
			System.out.println(ba);
			System.out.println(result);
			model.addAttribute("result", result);
			return "/admin/promo_banner.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
		}
	
	// 배너 수정 페이지
	@RequestMapping(value="/updateBannerPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, BannerVO vo) {	
		System.out.println("updateBannerPage()");
		
		model.addAttribute("BannerInfo", SiteService.getReadBanner(vo));
		System.out.println(SiteService.getReadBanner(vo));
		return "/admin/promo_banner_edit.jsp";
	}
	
	// 배너 수정
	@RequestMapping(value="/updateBanner.mdo")
	public String updateBanner(BannerVO vo, MultipartFile uploadImg) throws SQLException, IOException {
		System.out.print(vo);
		System.out.println(uploadImg);
		BannerVO bringData = SiteService.getReadBanner(vo);
		
		int index = bringData.getBanner_filepath().indexOf("/", 20);
		String key = bringData.getBanner_filepath().substring(index+1);
		
		if(!uploadImg.getOriginalFilename().equals("")) {
			if(!key.equals("banner/" + uploadImg)) {
				awss3.delete(key);
				
				InputStream is = uploadImg.getInputStream();
				String uploadKey = uploadImg.getOriginalFilename();
				String contentType = uploadImg.getContentType();
				long contentLength = uploadImg.getSize();
				
				String bucket = "semoproject/img/banner";
				
				awss3.upload(is, uploadKey, contentType, contentLength, bucket);
				
				String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/img/banner/" + uploadKey;
				bringData.setBanner_filepath(banner_filepath);
			}else {
				bringData.setBanner_filepath(bringData.getBanner_filepath());
			}
		}else {
			bringData.setBanner_filepath(bringData.getBanner_filepath());
		}
		bringData.setBanner_title(vo.getBanner_title());
		bringData.setBanner_content(vo.getBanner_content());
		bringData.setBanner_usable(vo.isBanner_usable());
		SiteService.updateBanner(bringData);
		
		return "redirect:/BannerList.mdo";
	}
	
	// 배너 삭제 (아직 체크박스를 눌러 삭제하는 기능은 구현 못함)
	@RequestMapping(value="/deleteBanner.mdo", method=RequestMethod.GET)
	public String deleteDelete(BannerVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteBanner 메서드 실행");
		SiteService.deleteBanner(vo);
		System.out.println("완료!");
		return "/BannerList.mdo";
	}
	
	
	// ------------------------------------------------------------------------------------------------- //
	
	
	// 약관 등록
	@RequestMapping(value="/insertTerms.mdo", method=RequestMethod.GET)
	public String insertTerms(TermsVO vo) {
		System.out.println("쿠폰 등록 처리");
		System.out.println(vo);
		
		SiteService.insertTerms(vo);
		System.out.println();
		
		return "/TermsList.mdo";
	}
	
	// 약관 목록
	@RequestMapping(value="/TermsList.mdo", method=RequestMethod.GET)
	public String getTermsList(Model model) {
		System.out.println("admin TermsList()");
		List<TermsVO> TermsList = SiteService.getTermsList();
		model.addAttribute("TermsList", TermsList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(TermsList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/support_termslist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 약관 상세
	@RequestMapping(value="/readTerms.mdo", method=RequestMethod.GET)
	public String getReadTerms(Model model, TermsVO vo) {	
		String TermsResult;
		System.out.println("admin readTerms()");
		model.addAttribute("TermsInfo", SiteService.getReadTerms(vo));
		if(SiteService.getReadTerms(vo).isTerms_necessary() == true) {
			TermsResult = "필수";
		}
		else {
			TermsResult = "선택";
		}
		model.addAttribute("TermsResult", TermsResult);
		System.out.println(SiteService.getReadTerms(vo));
		return "/admin/support_terms.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// 약관 수정 페이지
	@RequestMapping(value="/updateTermsPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, TermsVO vo) {	
		System.out.println("updatePage()");
		model.addAttribute("TermsInfo", SiteService.getReadTerms(vo));
		System.out.println(SiteService.getReadTerms(vo));
		return "/admin/support_terms_edit.jsp";
	}
	
	
	// 약관 수정
	@RequestMapping(value="/updateTerms.mdo", method=RequestMethod.GET)
	public String updateTerms(TermsVO vo, Model model) {
		System.out.println(vo);
		System.out.println("getUpdateTerms 메서드 실행");
		SiteService.updateTerms(vo); // update는 리턴값 없음
		System.out.println("완료!");
		return "/TermsList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 xxxxList.mdo로 보내서 
	}
	
	// 약관 삭제 (아직 체크박스를 눌러 삭제하는 기능은 구현 못함)
		@RequestMapping(value="/deleteTerms.mdo", method=RequestMethod.GET)
		public String deleteDelete(TermsVO vo, Model model) {
			System.out.println(vo);
			System.out.println("deleteTerms 메서드 실행");
			SiteService.deleteTerms(vo);
			System.out.println("완료!");
			return "/TermsList.mdo";
		}
	
}
