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
<<<<<<< HEAD
=======
import com.semo.web.admin.vo.MessageVO;
>>>>>>> main
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
	       int number = 0;  

	       count = salseService.getStoreArticleCount(pvo);
	       System.out.println("페이징 count : "+count);
	       List<OrderVO> storeSalesList = null;
	       if(count >0) {
	    	   storeSalesList= salseService.getStoreSalesList(pvo);
	   
	       }else {
	    	   storeSalesList=Collections.emptyList(); 
	       }
	       
			Map<String, String> conditionMap = new HashMap<String, String>();
			conditionMap.put("세탁구분", "order_no");
			conditionMap.put("매장명", "order_status");
			conditionMap.put("지역", "order_price_status");
			
		   model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("pageNum", pvo.getPageNum());
	       model.addAttribute("pageSize", pageSize);
	       model.addAttribute("currentPage", currentPage);
	       model.addAttribute("endRow", pvo.getEndRow());
	       model.addAttribute("count", count);
	       model.addAttribute("number", number);
	       model.addAttribute("storeSalesList", storeSalesList);
	       model.addAttribute("number", number);
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
	       int number = 0;  

	       count = salseService.getProductArticleCount(pvo);
	       List<OrderMtVO> productSalesList = null;
	       if(count >0) {
	    	   productSalesList= salseService.getProductSalesList(pvo);
	   
	       }else {
	    	   productSalesList=Collections.emptyList(); 
	       }
			
	       
			Map<String, String> conditionMap = new HashMap<String, String>();
			conditionMap.put("주문번호", "order_no");
			conditionMap.put("주문상태", "order_status");
			conditionMap.put("결제상태", "order_price_status");
				
		   model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("pageNum", pvo.getPageNum());
	       model.addAttribute("pageSize", pageSize);
	       model.addAttribute("currentPage", currentPage);
	       model.addAttribute("endRow", pvo.getEndRow());
	       model.addAttribute("count", count);
	       model.addAttribute("number", number);
	       model.addAttribute("productSalesList", productSalesList);
	       model.addAttribute("number", number);
	       System.out.println("매출 DB 결과"+productSalesList);

		return"admin/sales_productlist.jsp";
	}

}
