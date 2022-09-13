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
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class Ad_SalesController {
	//매출현황 및 Chart 관련
	
	@Autowired
	SalesService salseService;
	
	@RequestMapping(value="/salesStoreList.mdo")
	public String getSalesStoreList(PagingVO pvo, OrderVO vo, Model model) {
		System.out.println("매출 메서드 실행");
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

	       count = salseService.getArticleCount();
	       List<OrderVO> storeSalesList = null;
	       if(count >0) {
	    	   storeSalesList= salseService.getStoreSalesList(pvo);
	   
	       }else {
	    	   storeSalesList=Collections.emptyList(); 
	       }
			
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

	       count = salseService.getArticleCount();
	       List<OrderMtVO> productSalesList = null;
	       if(count >0) {
	    	   productSalesList= salseService.getProductSalesList(pvo);
	   
	       }else {
	    	   productSalesList=Collections.emptyList(); 
	       }
			
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
