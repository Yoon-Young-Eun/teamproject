package com.semo.web.admin.controller;


import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.service.SalesService;
import com.semo.web.admin.service.UtilService;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class Ad_SalesController {
	//매출현황 및 Chart 관련
	
	@Autowired
	SalesService salseService;
	
	@RequestMapping(value="/salesStoreList.mdo")
	public String getSalesStoreList(PagingVO pvo, OrderVO vo, Model model){
		System.out.println("매출 메서드 실행");
		System.out.println(pvo);
		 model.addAttribute("search",pvo);
		// 페이징 처리
	      if (pvo.getPageNum() == null) {
	    	  pvo.setPageNum("1");
	       }
	      
	      System.out.println(pvo.getSelectPage());
	      if (pvo.getSelectPage()==null ) {
	    	  pvo.setSelectPage("5");
	      }
	       int pageSize = Integer.parseInt(pvo.getSelectPage());
	       int currentPage = Integer.parseInt(pvo.getPageNum()); 
	       pvo.setStartRow((currentPage -1)* pageSize +1);
	       pvo.setEndRow(currentPage * pageSize);
	       int count =0; 	

	       count = salseService.getStoreArticleCount(pvo);
	       System.out.println("페이징 count : "+count);
	       List<OrderVO> storeSalesList = null;
	       if(count >0) {
	    	   storeSalesList= salseService.getStoreSalesList(pvo);
	   
	       }else {
	    	   storeSalesList=Collections.emptyList(); 
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
	       List<OrderVO> search2 = salseService.getSaleStoreSearchTitle2();
	       System.out.println(search2);
	       List<OrderVO> search3 = salseService.getSaleStoreSearchTitle3();
	       System.out.println(search3);
	       
	       model.addAttribute("search2", search2);
	       model.addAttribute("search3", search3);
	       model.addAttribute("storeSalesList", storeSalesList);
	       System.out.println("매출 DB 결과"+storeSalesList);

		return"admin/sales_storelist.jsp";
	}
	
	
	@RequestMapping(value="/salesProductList.mdo")
	public String getSalesProductList(PagingVO pvo, OrderMtVO vo, Model model) {
		System.out.println("매출 메서드 실행");
		System.out.println("PagingVO"+ pvo);

		 model.addAttribute("search",pvo);
		// 페이징 처리
	      if (pvo.getPageNum() == null) {
	    	  pvo.setPageNum("1");
	       }
	      
	      System.out.println(pvo.getSelectPage());
	      if (pvo.getSelectPage()==null ) {
	    	  pvo.setSelectPage("5");
	      }
	       int pageSize = Integer.parseInt(pvo.getSelectPage());
	       int currentPage = Integer.parseInt(pvo.getPageNum()); 
	       pvo.setStartRow((currentPage -1)* pageSize +1);
	       pvo.setEndRow(currentPage * pageSize);
	       int count =0; 	

	       count = salseService.getProductArticleCount(pvo);
	       List<OrderMtVO> productSalesList = null;
	       if(count >0) {
	    	   productSalesList= salseService.getProductSalesList(pvo);
	   
	       }else {
	    	   productSalesList=Collections.emptyList(); 
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
			
	       
			Map<String, String> conditionMap = new HashMap<String, String>();
			conditionMap.put("주문번호", "order_no");
			conditionMap.put("주문상태", "order_status");
			conditionMap.put("결제상태", "order_price_status");
				
		   model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("productSalesList", productSalesList);
	       System.out.println("매출 DB 결과"+productSalesList);

		return"admin/sales_productlist.jsp";
	}

}
