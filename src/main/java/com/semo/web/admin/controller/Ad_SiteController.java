package com.semo.web.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.semo.web.admin.service.SiteService;
import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.amazon.s3.AwsS3;


@Controller
public class Ad_SiteController {
	// 쿠폰, 배너, 약관
	
	@Autowired
	private SiteService SiteService;
	
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
	public String getCouponList(PagingVO pvo, Model model) {
		System.out.println("admin couponList()");
		
		//검색조건을 가지고 페이지 이동을 하기 위한 장치
		//페이징 버튼에  href = &searchKeyword=${search.searchKeyword} 등을 하기위함 

			model.addAttribute("search",pvo);
		
		// 페이징 처리
	      if (pvo.getPageNum() == null) { //처음엔 값이 없으니 null
	    	  pvo.setPageNum("1"); //1번으로 설정
	       }

	      System.out.println(pvo.getSelectPage());
	      if (pvo.getSelectPage()==null ) {  
	    	  pvo.setSelectPage("5"); //게시글 보이는 개수를 설정을 안하면 5(테이블에서 조회개수 변경을 위한 작업)
	      }
	      //pageNum 지금내가 몇 페이지에 이는지 확인하기
	      //curruntPage 현재 내가 위치하고있는 페이지
	      //startRow 현재 화면에서의 첫번째 게시물 
	      //endRow현재 화면에서의 마지막 게시물 행
	      //count 전체 게시글 수
	 
	       int pageSize = Integer.parseInt(pvo.getSelectPage()); //int로 형변환
	       int currentPage = Integer.parseInt(pvo.getPageNum()); // 현재 내가 위치하고있는 페이지
	       pvo.setStartRow((currentPage -1)* pageSize +1); //현재 화면에서의 첫번째 게시물
	       pvo.setEndRow(currentPage * pageSize); //현재 화면에서의 마지막 게시물 행
	       int count =0; 	 
	      
	       count = SiteService.getCouponArticleCount(pvo); // 조회 개수 (여러 검색 조건등이 포함되어야함)
	       System.out.println("count"+count);
	       List<CouponVO> CouponList = null; //조회 데이터를 담을 List 객체
	       if(count >0) { //조회할 데이터가 하나라도 있다면 메서드 실행
	    	   CouponList= SiteService.getCouponList(pvo);
	    	   System.out.println("CouponList"+CouponList);
	    	  
	       }else { //없으면 빵
	    	   CouponList=Collections.emptyList(); 
	       }
	       
	       if(count >0) {  //45일 경우
	     	  int pageBlock =5;
	     	  int imsi =count % pageSize ==0 ?0:1; 
	     	  int pageCount = count/pageSize +imsi;  
	     	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1;  
	     	  int endPage = startPage + pageBlock -1;  
	     	  //endPage(10)가 pageCount(9) 보다 크면 작동 endPage=pageCount
	     	  if(endPage > pageCount) {
	     		  endPage = pageCount;
	     	  }
	     	  
	     	  model.addAttribute("pageCount",pageCount);
	     	  model.addAttribute("startPage",startPage);
	     	  model.addAttribute("endPage",endPage);
	     	  model.addAttribute("pageBlock",pageBlock);
	           model.addAttribute("count", count);
	     	  }
	       
	       //검색을 적용할 타이틀을 정하는 제목(jsp에서 받아서 작업할거임)
			Map<String, String> conditionMap = new HashMap<String, String>();
			conditionMap.put("쿠폰명", "coupon_title");
			conditionMap.put("할인금액", "coupon_sale_price");
			conditionMap.put("발급대상", "coupon_type");
			/* conditionMap.put("회원상태", "customer_status"); */
			
		   //위에서 얻은 데이터를 model에 담아 보낸다~
	       model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("CouponList", CouponList);
	       System.out.println("Coupon 목록 리스트"+CouponList);
		
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
	@RequestMapping(value="/updateCouponPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, CouponVO vo) {	
		System.out.println("updateCouponPage()");
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
	
	// 쿠폰 삭제
	@RequestMapping(value="/deleteCoupon.mdo", method=RequestMethod.GET)
	public String deleteCoupon(CouponVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteCoupon 메서드 실행");
		SiteService.deleteCoupon(vo);
		System.out.println("완료!");
		return "/CouponList.mdo";
	}
	
	// 쿠폰 삭제 (체크박스)
	@RequestMapping("/deleteCouponCheck.mdo")
	public String deleteCouponCheck(String[] tdArr, CouponVO vo) {
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				System.out.println("dhsi");
				arr2.add(Integer.parseInt(tdArr[a])) ;
				System.out.println(arr2.get(a)+"tes");
				vo.setCoupon_code(arr2.get(a));
				SiteService.deleteCoupon(vo.getCoupon_code());
			}
		}
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
		AwsS3 awss3 = AwsS3.getInstance();
		InputStream is = banner.getInputStream();
		System.out.println(is);
		String key = banner.getOriginalFilename();
		String contentType = banner.getContentType();
		long contentLength = banner.getSize();
		
		String bucket = "semoproject/banner";
		
		awss3.upload(is, key, contentType, contentLength, bucket);
		String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/banner/" + key;
		vo.setBanner_filepath(banner_filepath);
		
		SiteService.insertBanner(vo);
		
		return "redirect:/BannerList.mdo";
	}
	
	// 배너 목록
	@RequestMapping(value="/BannerList.mdo", method=RequestMethod.GET)
	public String getBannerList(Model model) {
		System.out.println("admin BannerList()");
		List<BannerVO> BannerList = SiteService.getBannerList();
		model.addAttribute("BannerList", BannerList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(BannerList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/promo_bannerlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// 배너 상세
	@RequestMapping(value="/readBanner.mdo", method=RequestMethod.GET)
	public String getReadBanner(Model model, BannerVO vo) {	
		System.out.println("admin readBanner()");
		
		String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/banner/";
		String result;
		
		BannerVO ba = SiteService.getReadBanner(vo);
		
		String filename = ba.getBanner_filepath().replace(banner_filepath, "");
		System.out.println(ba);
		model.addAttribute("BannerInfo", ba);
		model.addAttribute("filename", filename);
		
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
		AwsS3 awss3 = AwsS3.getInstance();
		System.out.println(vo);
		System.out.println(uploadImg);
		BannerVO bringData = SiteService.getReadBanner(vo);
		
		int index = bringData.getBanner_filepath().indexOf("/", 20);
		String key = bringData.getBanner_filepath().substring(index+1);
		System.out.println("key :           "+key);
		if(!uploadImg.getOriginalFilename().equals("")) {
			if(!key.equals("banner/" + uploadImg)) {
				awss3.delete(key);
				
				InputStream is = uploadImg.getInputStream();
				String uploadKey = uploadImg.getOriginalFilename();
				String contentType = uploadImg.getContentType();
				long contentLength = uploadImg.getSize();
				
				String bucket = "semoproject/banner";
				
				awss3.upload(is, uploadKey, contentType, contentLength, bucket);
				
				String banner_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/banner/" + uploadKey;
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

	// 배너 삭제
	@RequestMapping("/deleteBanner.mdo")
	public String deleteDelete(BannerVO vo) throws IOException, SQLException{
		
		AwsS3 awss3 = AwsS3.getInstance();
		BannerVO bringData = SiteService.getReadBanner(vo);
		
		int index = bringData.getBanner_filepath().indexOf("/", 20);
		String key = bringData.getBanner_filepath().substring(index+1);
		System.out.println("index:      "+index);
		System.out.println("key:          "+key);
		awss3.delete(key);
		
		SiteService.deleteBanner(bringData);
		
		return "redirect:/BannerList.mdo";
	}
	// --------------------------------------------------------------------------------------------//
	
	// 배너 삭제 (체크박스)
	@RequestMapping("/deleteBannerCheck.mdo")
	public String deleteBannerCheck(String[] tdArr, BannerVO vo) throws IOException {
		
		AwsS3 awss3 = AwsS3.getInstance();
		
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				System.out.println("dhsi");
				arr2.add(Integer.parseInt(tdArr[a])) ;
				System.out.println(arr2.get(a)+"tes");
				vo.setBanner_no(arr2.get(a));
				BannerVO bringData = SiteService.getReadBanner(vo);
				
				int index = bringData.getBanner_filepath().indexOf("/", 20);
				String key = bringData.getBanner_filepath().substring(index+1);
				awss3.delete(key);
				
				SiteService.deleteBanner(vo.getBanner_no());
			}
		}
		return "/BannerList.mdo";
	}
	
	
	// ------------------------------------------------------------------------------------------------- //
	
	
	// 약관 등록
	@RequestMapping(value="/insertTerms.mdo", method=RequestMethod.POST)
	   public String insertTerms(TermsVO vo) {
	      System.out.println("쿠폰 등록 처리");
	      System.out.println(vo);
	      
	      SiteService.insertTerms(vo);
	      System.out.println();
	      
	      return "redirect:TermsList.mdo";
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
	
	// 약관 삭제
	@RequestMapping(value="/deleteTerms.mdo", method=RequestMethod.GET)
	public String deleteDelete(TermsVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteTerms 메서드 실행");
		SiteService.deleteTerms(vo);
		System.out.println("완료!");
		return "/TermsList.mdo";
	}
	
	// 약관 삭제 (체크박스)
	@RequestMapping("/deleteTermsCheck.mdo")
	public String deleteTermsCheck(String[] tdArr, TermsVO vo) {
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				System.out.println("dhsi");
				arr2.add(Integer.parseInt(tdArr[a])) ;
				System.out.println(arr2.get(a)+"tes");
				vo.setTerms_no(arr2.get(a));
				SiteService.deleteTerms(vo.getTerms_no());
			}
		}
		return "/TermsList.mdo";
	}
}
