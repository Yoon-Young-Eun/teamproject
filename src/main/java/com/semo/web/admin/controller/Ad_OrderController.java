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

import com.semo.web.admin.service.MemberService;
import com.semo.web.admin.service.OrderService;
import com.semo.web.admin.util.CoolSms;
import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;

@Controller
public class Ad_OrderController {
	// 주문이력 관련 
	
	@Autowired
	OrderService orderserivce;
	
	@Autowired//문자 메서드 사용하기위해
	MemberService memberService;
	
	@Autowired
	CoolSms coolsms;
	
	//메시지 보내는 메서드 보낸 후, 회원List 조회 컨트롤러로 이동
	@RequestMapping(value="/orderMessage.mdo")
	public String sendMassage(String [] tdArr, String message) {
		
		System.out.println(tdArr);
		System.out.println(message);
		
		 coolsms.sendMessage(tdArr, message); 
		 return "/orderList.mdo";
	}
	
	
	
	   //회원 구매이력
	   @RequestMapping(value="/memberorderList.mdo", method = RequestMethod.GET)
		public String getUserOrderList(CmOrderVO cvo, PagingVO pvo, CustomerVO vo, Model model, MessageVO mvo) {
			System.out.println("글 목록 검색 처리");
			
			System.out.println(pvo);

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
		      
		       count = orderserivce.getArticleCount(pvo);
		       List<CmOrderVO> userOrderList = null;
		       if(count >0) {
		    	   userOrderList= orderserivce.getUserOrderList(pvo);
		   
		       }else {
		    	   userOrderList=Collections.emptyList(); 
		       }
		       
				Map<String, String> conditionMap = new HashMap<String, String>();
				conditionMap.put("상품명", "order_mt_product");
				conditionMap.put("주문번호", "order_no");
				
		       model.addAttribute("conditionMap", conditionMap);
		       model.addAttribute("pageNum", pvo.getPageNum());
		       model.addAttribute("pageSize", pageSize);
		       model.addAttribute("currentPage", currentPage);
		       model.addAttribute("endRow", pvo.getEndRow());
		       model.addAttribute("count", count);
		       model.addAttribute("number", number);
		       model.addAttribute("userOrderList", userOrderList);
		       model.addAttribute("number", number);
		       System.out.println("회원 주문이력"+userOrderList);
		       
		       
		       List<MessageVO> messageList = memberService.getMessageList(mvo);
		       System.out.println(messageList);
		       model.addAttribute("messageList", messageList);
		       System.out.println("메시지 리스트"+ messageList);
		       
			return "admin/memberorderList.jsp";
			
			
		}	
	
}
