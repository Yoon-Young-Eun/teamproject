package com.semo.web.admin.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.OrderService;
import com.semo.web.admin.service.UtilService;
import com.semo.web.admin.util.CoolSms;
import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class Ad_OrderController {
	// 주문이력 관련 

	@Autowired
	OrderService orderserivce;

	@Autowired //문자 서비스
	UtilService utilservice;

	@Autowired
	CoolSms coolsms;

	//메시지 보내는 메서드 보낸 후, 회원List 조회 컨트롤러로 이동
		@RequestMapping(value="/orderMessage.mdo")
		public String sendMassage(String [] tdArr, String message) {
			
			System.out.println(tdArr);
			System.out.println(message);
			
			 coolsms.sendMessage(tdArr, message); 
			 return "/adminOrderList.mdo";
		}
		
		// 주문이력
		@RequestMapping("/adminOrderList.mdo")
		public String getOrderList(PagingVO pvo, Model model, MessageVO mvo) {
			System.out.println("getOrderList() 실행");
			
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
		      
		       count = orderserivce.getArticleCount(pvo);
		       List<OrderVO> adminOrderList = null;
		       if(count >0) {
		    	   adminOrderList= orderserivce.getAdminOrderList(pvo);
		   
		       }else {
		    	   adminOrderList=Collections.emptyList(); 
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
		       model.addAttribute("adminOrderList", adminOrderList);
		       System.out.println("회원 주문이력"+adminOrderList);
		       
		      
		       List<MessageVO> messageList = utilservice.getMessageList(mvo);
		       System.out.println(messageList);
		       model.addAttribute("messageList", messageList);
		       System.out.println("메시지 리스트"+ messageList);
			
			return "admin/orderList.jsp";
		}
		
		
		
		
		
		   //회원 개인 구매이력
		   @RequestMapping(value="/memberorderList.mdo", method = RequestMethod.GET)
			public String getUserOrderList(PagingVO pvo,  Model model, MessageVO mvo) {
				System.out.println("회원 개인 구매 이력");
				
				System.out.println(pvo);
				
				if (pvo != null) {
					model.addAttribute("search",pvo);
				}

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
			      
			       count = orderserivce.getMemberArticleCount(pvo);
			       System.out.println("count"+count);
			       List<OrderMtVO> userOrderList = null;
			       if(count >0) {
			    	   userOrderList= orderserivce.getUserOrderList(pvo);
			   
			       }else {
			    	   userOrderList=Collections.emptyList(); 
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
					conditionMap.put("회원번호", "customer_no");
					conditionMap.put("주문번호", "order_no");
					
			       model.addAttribute("conditionMap", conditionMap);
			       model.addAttribute("userOrderList", userOrderList);
			       System.out.println("회원 주문이력"+userOrderList);
			       
			   
			       List<MessageVO> messageList = utilservice.getMessageList(mvo);
			       System.out.println(messageList);
			       model.addAttribute("messageList", messageList);
			       System.out.println("메시지 리스트"+ messageList);
			       
				return "admin/memberorderList.jsp";
				
				
			}	



	//견적서
	@RequestMapping(value="/getEstimateList.mdo", method=RequestMethod.GET)
	public String getEstimateList(EstimateVO vo, Model model) {
		System.out.println("사용자요청 목록 처리");
		List<EstimateVO> estimateList = orderserivce.getEstimateList(vo);
		model.addAttribute("estimateList", estimateList);
		return "/admin/estimate.jsp";
	}
	
	@RequestMapping("/getEstimate.mdo")
	public String getEstimate(EstimateVO vo, Model model) {
		System.out.println("사용자 요청 상세보기 처리");
		System.out.println(vo);
		List<Estimate_T_VO> eto = orderserivce.getEstimateType();	
		System.out.println(eto);
		EstimateVO evo=orderserivce.getEstimate(vo);
		model.addAttribute("getEstimate", evo);
		model.addAttribute("estitype",eto);
		System.out.println(evo);
		return "/admin/estimate_detail.jsp";
	}
	
	@RequestMapping(value="/insertEstimate.mdo", method=RequestMethod.POST)
	public String insertEstimate(Ad_EstimateVO vo) {
		System.out.println("insertEstimate메서드");
		System.out.println(vo);
	
		orderserivce.insertEstimate(vo);
		orderserivce.updateEstimate(vo);

		System.out.println("답변등록 처리");
		return "redirect:getEstimateList.mdo";
	}
	
	@RequestMapping("/getAd_Estimate.mdo")
	public String getAd_Estimate(Ad_EstimateVO vo , EstimateVO evo , Model model) {
		System.out.println("관리자 답변 상세보기");
		EstimateVO uvo= orderserivce.getEstimate(evo);
		System.out.println(uvo);
		Ad_EstimateVO avo = orderserivce.getAd_Estimate(vo);
		System.out.println(avo);
		model.addAttribute("getestimate", uvo);
		model.addAttribute("getAd_Estimate", avo);
		return "/admin/estimate_answer.jsp";
	}
	
}
