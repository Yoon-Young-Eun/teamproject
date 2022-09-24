package com.semo.web.user.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.service.MypageService;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class MypageController {
 
	
	@Autowired
	MypageService service;
	
	// MyMain : 최근 주문
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String RecentOrder(Model model, CustomerVO customer, OrderVO order, PagingVO pvo) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyMain.jsp");
		System.out.println("Controller > " + customer);
		
		// 요약박스
		int cnt = service.ordercnt(customer);
		int cnt2 = service.couponcnt(customer);
		int cnt3 = service.askcnt(customer);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("cnt2", cnt2);
		model.addAttribute("cnt3", cnt3);

		// order_no > 내용 불러오기(OrderMtVO)
		OrderMtVO ordermt = service.ordermt(order);
		System.out.println("Controller > OrderDetail > " + ordermt);
		
		// customer_no > 주문 정보 불러오기(최근 3개만)
		List<OrderVO> recentorder = service.recentorder(customer);
		System.out.println("Controller > recentorder > " + recentorder);
	
		// 화면에 "orderlist" 표시
		model.addAttribute("recentorder", recentorder);
		
		 // order_no > "최근주문-내용" 눌렀을 때 주문 상세로 넘어가기
		 model.addAttribute("ordernum", order.getOrder_no());
		 // store_code > "주문목록-내용" 눌렀을 때 주문 상세로 넘어가기
		 model.addAttribute("store_code", order.getStore_code());
		 // "내용"에 데이터 표시
		 model.addAttribute("ordermt", ordermt);
		 
		
		return "/views-mypage/MyMain.jsp";	
	}
	
	// MyOrderList : 주문 목록
	@RequestMapping(value = "/myorderlist.do", method = RequestMethod.GET)
	public String OrderList(Model model, PagingVO pvo, CustomerVO customer, OrderVO order) {
		
		 model.addAttribute("search", pvo);
		
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
	      
	       count = service.myOrderCount(pvo); // 조회 개수 (여러 검색 조건등이 포함되어야함)
	       System.out.println("count"+count);
	       List<OrderVO> orderlist = null; //조회 데이터를 담을 List 객체
	       if(count >0) { //조회할 데이터가 하나라도 있다면 메서드 실행
	    	   orderlist = service.myOrderPaging(pvo);
	    	   System.out.println("orderList"+orderlist);
	    	  
	       }else { //없으면 빵
	    	   orderlist=Collections.emptyList(); 
	       }
	       
			  if(count >0) { //조회된 데이터 개수가 0보다 크면 if문 실행
		    	  int pageBlock =5;
		    	  int imsi =count % pageSize ==0 ?0:1; //전체 페이지 게시물을 pageSize로 나눴을때 오류를 대비한 나머지구하는식
		    	  int pageCount = count/pageSize +imsi; //페이징 넘버 개수
		    	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1; //현재 보이는 페이징 시작번호 
		    	  int endPage = startPage + pageBlock -1; //현재 보이는 페이징 끝번호
		    	  
		    	  // 추가 if문 : endPage(예:10)이 pageCount(예:9)보다 클경우 endPage의 값은 9로 한다!
		    	  if(endPage > pageCount) {
		    		  endPage = pageCount;
		    	  }
		    	  
		    	  model.addAttribute("pageCount",pageCount);
		    	  model.addAttribute("startPage",startPage);
		    	  model.addAttribute("endPage",endPage);
		    	  model.addAttribute("pageBlock",pageBlock);
		          model.addAttribute("count", count);
		    	  }
			  
			  
			  //페이징 종료
		

		
		System.out.println("======================================================================================================");
		System.out.println("go to MyOrderlist.jsp");
		System.out.println("Controller > " + customer);
		
		// 목록 개수 세기
		int cnt = service.ordercnt(customer);
		model.addAttribute("cnt", cnt);
		
		// "더보기" 또는 "메뉴-주문관리" 눌렀을 때 주문 목록으로 넘어가기
		// customer_no > 주문 정보 불러오기
		System.out.println("Controller > 주문 정보 불러오기 > " + orderlist);
		
		// order_no > "주문목록-내용" 눌렀을 때 주문 상세로 넘어가기
		model.addAttribute("ordernum", order.getOrder_no());
		// store_code > "주문목록-내용" 눌렀을 때 주문 상세로 넘어가기
		model.addAttribute("store_code", order.getStore_code());
		
		// 화면에 "order" 표시
		model.addAttribute("orderlist", orderlist);
		
		return "/views-mypage/MyOrderlist.jsp";
	}
	
	// MyOrder : 주문 상세
	@RequestMapping(value = "/orderdetail.do", method = RequestMethod.GET)
	public String OrderDetail(Model model, CustomerVO customer, OrderMtVO ordermt, OrderVO order, StoreVO store) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyOrder.jsp");
		System.out.println("Controller > " + order);
		System.out.println("Controller > " + ordermt);
		System.out.println("Controller > " + store);
		
		// "메뉴-주문관리-목록-내용" 눌렀을 때 주문 상세로 넘어가기
		// customer_no > 주문 정보 불러오기(OrderVO)
		List<OrderVO> orderlist = service.orderlist(customer);
		System.out.println("Controller > OrderList > " + orderlist);
		
		// order_no > OrderVO
		OrderVO ordervo = service.ordervo(order);
		model.addAttribute("ordervo", ordervo);
		
		// order_no > 주문 상세 불러오기(OrderMtVO)
		List<OrderMtVO> orderdetail = service.orderdetail(order);
		System.out.println("Controller > OrderDetail > " + orderdetail);
		
		// store_no > 직영점 상세 불러오기 (StoreVO)
		StoreVO storedetail = service.storedetail(order);
		System.out.println("Controller > StoreDetail > " + storedetail);
		
		model.addAttribute("orderdetail", orderdetail);
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("storedetail", storedetail);
		
		return "/views-mypage/MyOrder.jsp";
		
	}
	
	// MyAddresslist : 주소 목록
	@RequestMapping(value = "/myaddresslist.do", method = RequestMethod.GET)
	public String AddressList(Model model, CustomerVO customer, AddressListVO address) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyAddresslist.jsp");
		System.out.println("Controller > customer " + customer);
		
		// customer_no > 주소 목록 불러오기
		List<AddressListVO> addresslist = service.addresslist(customer);
		System.out.println("Controller > addresslist > " + addresslist);	
		
		model.addAttribute("addresslist", addresslist);
		
		// cm_address_no > 주소 상세
		model.addAttribute("addressnum", address.getCm_address_no());
		
		return "/views-mypage/MyAddresslist.jsp";
	}
	
	// MyAddress : 주소 상세
	@RequestMapping(value = "/addressdetail.do", method = RequestMethod.GET)
	public String AddressDetail(Model model, CustomerVO customer, AddressListVO address, OrderVO order) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyAdress.jsp");	
		
		// customer_no > 주소 불러오기
		AddressListVO addressdetail = service.addressdetail(customer);
		System.out.println("Controller > addressdetail > " + addressdetail);
				
		model.addAttribute("addressdetail", addressdetail);
		
		return "/views-mypage/MyAddress.jsp";
	}

	// MyCoupon : 쿠폰 조회
	@RequestMapping(value = "/mycoupon.do", method = RequestMethod.GET)
	public String Coupon(Model model, CustomerVO customer) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyAdress.jsp");
		
		System.out.println("Controller > " + customer);
		
		// 목록 개수 세기
		int cnt2 = service.couponcnt(customer);
		model.addAttribute("cnt2", cnt2);
		
		// customer_no > 쿠폰 목록 불러오기
		List<CouponListVO> couponlist = service.couponlist(customer);
		System.out.println("Controller > couponlist > " + couponlist);
		
		model.addAttribute("couponlist", couponlist);
		
		return "/views-mypage/MyCoupon.jsp";

	}
	
	// MyAsklist : 문의내역
	@RequestMapping(value = "/myasklist.do", method = RequestMethod.GET)
	public String AskList(Model model, CustomerVO customer, Cm_QnAVO qna) {
		System.out.println("======================================================================================================");
		System.out.println("go to Myasklist.jsp");
		
		System.out.println("Controller > " + customer);
		
		// 목록 개수 세기
		int cnt3 = service.askcnt(customer);
		model.addAttribute("cnt3", cnt3);
		
		// customer_no > 문의 목록 불러오기
		List<Cm_QnAVO> asklist = service.asklist(customer);
		System.out.println("Controller > asklist > " + asklist);
		
		model.addAttribute("asklist", asklist);
		
		return "/views-mypage/MyAsklist.jsp";
	}
	
	// MyAsk : 문의글쓰기
	@RequestMapping(value = "/myask.do", method = RequestMethod.GET)
	public String Ask(Model model, CustomerVO customer, Cm_QnAVO qna) {
		
		return "/views-mypage/MyAsk.jsp";
	}
	
	// MyAsk : 문의글 작성 > MyAsklist : 목록으로 보내기
	@RequestMapping(value = "/insertask.do", method = RequestMethod.GET)
	public String InsertAsk(Model model, Cm_QnAVO qna) {
		
		Cm_QnAVO qnavo = service.insertask(qna);
		model.addAttribute("qnavo", qnavo);
		
		return "/myasklist.do";
	}

	
	
	//견적서
    @RequestMapping(value= "/myestimate.do")
    public String getMyEstimate(EstimateVO evo, Ad_EstimateVO avo, Estimate_ImageVO vo1, Model model) {
       System.out.println("내 견적요청서");
       System.out.println("evo"+evo);
       System.out.println("avo"+ avo); 
       
       List<Estimate_ImageVO> eiv = service.getEstimateImg(vo1);
       EstimateVO myvo = service.getMyEstimate(evo);

       model.addAttribute("estiimg", eiv);
       model.addAttribute("getEstimate", myvo);
       System.out.println("myvo"+myvo);
       
       System.out.println("관리자답변");
       Ad_EstimateVO advo = service.getAd_Estimate(avo);
       System.out.println("답변?"+advo);
       model.addAttribute("getAd", advo);
       return "/views-mypage/MyEstimate.jsp";
    }
    
    //견적리스트
    @RequestMapping(value= "/getmyEstimate.do")
    public String getmyEstimate(PagingVO pvo, Model m) {
       System.out.println("견적리스트뽑기");
       System.out.println("페이징" + pvo);
       
       m.addAttribute("search",pvo);
       
     //페이징
       if (pvo.getPageNum() == null) {
     	  pvo.setPageNum("1");
       }
       System.out.println(pvo.getSelectPage());
       if (pvo.getSelectPage()==null) {
     	  pvo.setSelectPage("5");
       }
       
       int pageSize = Integer.parseInt(pvo.getSelectPage());
       int currentPage = Integer.parseInt(pvo.getPageNum());
       System.out.println("paagenum"+currentPage);
       pvo.setStartRow((currentPage - 1)*pageSize+1);
       pvo.setEndRow(currentPage * pageSize);
       int count=0;
       
       count= service.getListCount(pvo);
       System.out.println(count);
       List<EstimateVO> evo= null;
       
       if(count >0) {
    	   evo = service.getmyEstimate(pvo);
       }else {
    	   evo = Collections.emptyList();
       }
 
       if(count >0) {
     	  int pageBlock =5;
     	  int imsi =count % pageSize ==0 ?0:1;
     	  int pageCount = count/pageSize +imsi;
     	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1;
     	  int endPage = startPage + pageBlock -1;

     	  if(endPage > pageCount) {
     		  endPage = pageCount;
     	  }
     	  
          m.addAttribute("count", count);
     	  m.addAttribute("pageCount",pageCount);
     	  m.addAttribute("startPage",startPage);
     	  m.addAttribute("endPage",endPage);
     	  m.addAttribute("pageBlock",pageBlock);

          m.addAttribute("count", count);
       }
          
       Map<String, String> condition = new HashMap<String, String>();
       condition.put("견적번호", "estimate_cm_no");
       condition.put("내용", "estimate_content");
       
       m.addAttribute("condition", condition);   
       m.addAttribute("elist", evo);
       System.out.println(evo);
       
       		// 목록 개수 세기
       		EstimateVO evo2 = new EstimateVO();
    		int cnt4 = service.estimatecnt(pvo);
    		m.addAttribute("cnt4", cnt4);
       return "/views-mypage/MyEstimatelist.jsp";
    }
    
    //마이페이지 -> 내 리뷰관리 
    @RequestMapping(value="/myReview.do")
    public String myReview(PagingVO vo,ReviewVO vo1,Model model) {
    	System.out.println("고객정보내놔"+vo);
   	
    	
    	if (vo.getPageNum() == null) {
    		vo.setPageNum("1");
	       }
	      
	      System.out.println(vo.getSelectPage());
	      if (vo.getSelectPage()==null ) {
	    	  vo.setSelectPage("5");
	      }
	       int pageSize = Integer.parseInt(vo.getSelectPage());
	       int currentPage = Integer.parseInt(vo.getPageNum()); 
	       vo.setStartRow((currentPage -1)* pageSize +1);
	       vo.setEndRow(currentPage * pageSize);
	       int count =0; 
 
	    	count = service.getReviewCount(vo);
	   	
	      
	     
	    	List<ReviewVO>myReviewList =null;
	       if(count >0) {
	    	   myReviewList =  service.myReviewList(vo);	  
	       }else {
	    	   myReviewList=Collections.emptyList(); 
	       }

	 	  if(count >0) {
	    	  int pageBlock =5;
	    	  int imsi =count % pageSize ==0 ?0:1;
	    	  int pageCount = count/pageSize +imsi;
	    	  int startPage =(int)((currentPage-1)/pageBlock)*pageBlock +1;
	    	  int endPage = startPage + pageBlock -1;
	    	  
	    	  // 추가 if문 : endPage(예:10)이 pageCount(예:9)보다 클경우 endPage의 값은 9로 한다!
	    	  if(endPage > pageCount) {
	    		  endPage = pageCount;
	    	  }
	    	  
	    	  model.addAttribute("pageCount",pageCount);
	    	  model.addAttribute("startPage",startPage);
	    	  model.addAttribute("endPage",endPage);
	    	  model.addAttribute("pageBlock",pageBlock);
	          model.addAttribute("count", count);
	    	  }
	       
	 	  	model.addAttribute("myReviewList",myReviewList);
	 	  	
	 	  	
	 	  	
    	return "/views-mypage/MyReview.jsp";
    }
    
    //리뷰 상세보기
    @RequestMapping(value="/viewReview.do")
    public String viewReview(ReviewVO vo,Model model) {
    	System.out.println(vo);
    	service.viewReview(vo);
    	model.addAttribute("view",service.viewReview(vo));
    	System.out.println(service.viewReview(vo));
    	return "/views-mypage/myReviewView.jsp";
    }
		
}
