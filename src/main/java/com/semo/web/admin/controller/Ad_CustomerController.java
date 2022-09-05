package com.semo.web.admin.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.MemberService;
import com.semo.web.admin.util.CoolSms;
import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class Ad_CustomerController {
	// 영은 : 회원관리, 블랙회원관리
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	CoolSms coolsms;
	
//	@ModelAttribute
//	1. Controller 메서드의 매개변수로 선언된 Command 객체의 이름을 변경할 때 사용. 
//	2. 또 다른 기능은 View(JSP)에서 사용할 데이터를 설정하는 용도로 사용할 수 있다. 
//	   @ModelAttribute가 설정된 메서드는 @RequestMapping 어노테이션이 적용된 메서드보다 먼저 호출된다. 
//	   또한 @ModelAttribute 메서드 실행결과로 리턴된 객체는 자동으로 Model에 저장된다.
	
	/*
	 * @ModelAttribute("conditionMap") public Map<String, String>
	 * searchConditionMap() { Map<String, String> conditionMap = new HashMap<String,
	 * String>(); conditionMap.put("아이디", "customer_id"); conditionMap.put("주소",
	 * "customer_address1"); return conditionMap; }
	 */
	
	@RequestMapping(value="/member.mdo", method = RequestMethod.GET)
	public String getBoardList(String [] tdArr, String message, PagingVO pvo, CustomerVO vo, Model model, MessageVO mvo) {
		System.out.println("글 목록 검색 처리");
		
		System.out.println(pvo);
		//Cool메신저 		
	      coolsms.sendMessage(tdArr, message); 
	      
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
	      
	       count = memberService.getArticleCount();
	       List<CustomerVO> articleList = null;
	       if(count >0) {
	    	   articleList= memberService.getBoardList(pvo);
	    	  
	       }else {
	    	   articleList=Collections.emptyList(); 
	       }

	       
			Map<String, String> conditionMap = new HashMap<String, String>();
			conditionMap.put("아이디", "customer_id");
			conditionMap.put("주소", "customer_address1");
			
	       model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("pageNum", pvo.getPageNum());
	       model.addAttribute("pageSize", pageSize);
	       model.addAttribute("currentPage", currentPage);
	       model.addAttribute("endRow", pvo.getEndRow());
	       model.addAttribute("count", count);
	       model.addAttribute("number", number);
	       model.addAttribute("articleList", articleList);
	       model.addAttribute("number", number);
	       System.out.println("회원 목록 리스트"+articleList);
	       
	       
	       List<MessageVO> messageList = memberService.getMessageList(mvo);
	       System.out.println(messageList);
	       model.addAttribute("messageList", messageList);
	       System.out.println("메시지 리스트"+ messageList);
	       
		return "admin/member.jsp";
	}	
	
   @RequestMapping(value="getBoard.mdo", method=RequestMethod.GET)
    public String getRead(CustomerVO vo, Model model) {
	   	System.out.println("getRead() 메서드 실행");
	    System.out.println(vo);
	    CustomerVO user = memberService.getRead(vo);
	    model.addAttribute("user", user);
	   return "admin/member_managepop.jsp";
   }
   
   
   @RequestMapping("/deleteBoard.mdo")
   public String deleteBoard(String[] tdArr, CustomerVO vo) {
      System.out.println(tdArr);
      System.out.println("글 삭제 처리");
      int[] arr2 = null;
      for(int a=0; a<tdArr.length; a++) {
         arr2[a] = Integer.parseInt(tdArr[a]);
         
         vo.setCustomer_no(arr2[a]);
         boardservice.getUserOrderList(vo.getCustomer_no());
      }
      boardservice.deleteBoard(vo);
      return "getBoardList.mdo";
   }
   
   
   @RequestMapping(value="/selectDelele", method=RequestMethod.GET)
   public String selectedDeleted(String [] tdArr) {
	   
	   for(int i=0; i< tdArr.length; i++) {
		   
	   }
	   
	   
	   return "/member.mdo";
   }
   
   
   @RequestMapping(value="/memberorderList.mdo", method = RequestMethod.GET)
	public String getUserOrderList(String [] tdArr, String message, CmOrderVO cvo, PagingVO pvo, CustomerVO vo, Model model, MessageVO mvo) {
		System.out.println("글 목록 검색 처리");
		
		System.out.println(pvo);
		//Cool메신저 		
	      coolsms.sendMessage(tdArr, message); 
	      
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
	      
	       count = memberService.getArticleCount();
	       List<CmOrderVO> userOrdeList = null;
	       if(count >0) {
	    		   userOrdeList= memberService.getUserOrderList(pvo);
	   
	       }else {
	    	   userOrdeList=Collections.emptyList(); 
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
	       model.addAttribute("userOrdeList", userOrdeList);
	       model.addAttribute("number", number);
	       System.out.println("회원 주문이력"+userOrdeList);
	       
	       
	       List<MessageVO> messageList = memberService.getMessageList(mvo);
	       System.out.println(messageList);
	       model.addAttribute("messageList", messageList);
	       System.out.println("메시지 리스트"+ messageList);
	       
		return "admin/memberorderList.jsp";
	}	
   
   

}
