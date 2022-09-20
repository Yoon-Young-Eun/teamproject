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
import com.semo.web.admin.service.UtilService;
import com.semo.web.admin.util.CoolSms;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

@Controller
public class Ad_CustomerController {
	// 영은 : 회원관리, 블랙회원관리
	
	@Autowired
	MemberService memberService;
	
	@Autowired //문자 메시지
	UtilService utilservice;
	
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
	
	
	//메시지 보내는 메서드 보낸 후, 회원List 조회 컨트롤러로 이동
	@RequestMapping(value="/message.mdo")
	public String sendMassage(String [] tdArr, String message, CustomerVO vo, MessageVO mvo) {
		
		
		/*
		 * String phone = vo.getCustomer_phone(); String mess =
		 * mvo.getMessage_content();
		 */
		
		String phone = "01031721622";
		String mess = "문자다";
		System.out.println(phone);
		System.out.println(mess);
		
		 coolsms.sendMessage(phone, mess); 
		 return "/member.mdo";
	}
	

	
	//회원 (블랙회원 제외) 조회 리스트
	@RequestMapping(value="/member.mdo", method = RequestMethod.GET)
	public String getMemberList(PagingVO pvo, CustomerVO vo, Model model, MessageVO mvo) {
		System.out.println("회원 목록 검색 처리");
		System.out.println(mvo);
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
	      
	       count = memberService.getArticleCount(pvo);
	       List<CustomerVO> articleList = null;
	       if(count >0) {
	    	   articleList= memberService.getBoardList(pvo);
	    	  
	       }else {
	    	   articleList=Collections.emptyList(); 
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
				conditionMap.put("이름", "customer_name");
				conditionMap.put("회원상태", "customer_status");
					
			
	       model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("articleList", articleList);
	       System.out.println("회원 목록 리스트"+articleList);
	       


	
	       List<MessageVO> messageList = utilservice.getMessageList();
	       
	       System.out.println(messageList);
	       model.addAttribute("messageList", messageList);
	       System.out.println("메시지 리스트"+ messageList);
	       
		return "admin/member.jsp";
	}	
	
    //블랙맴버 리스트 조회 리스트
	@RequestMapping(value="/blackmember.mdo", method = RequestMethod.GET)
	public String getBlackList(PagingVO pvo, CustomerVO vo, Model model, MessageVO mvo) {
		System.out.println("블랙 목록 검색 처리");
		
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
	      
	       count = memberService.getBlackCount(pvo);
	       List<CustomerVO> blackList = null;
	       if(count >0) {
	    	   blackList= memberService.getBlackList(pvo);  	  
	       }else {
	    	   blackList=Collections.emptyList(); 
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
	       
	       
	       //검색 조건
			Map<String, String> conditionMap = new HashMap<String, String>();
			conditionMap.put("이름", "customer_name");
			conditionMap.put("주소", "customer_address1");
			
	       model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("blackList", blackList);
	       System.out.println("블랙 회원 목록 리스트"+blackList);
	       
	      
	       List<MessageVO> messageList = utilservice.getMessageList();
	       model.addAttribute("messageList", messageList);
	       System.out.println("메시지 리스트"+ messageList);
	       
		return "admin/member_black.jsp";
	}
	
	
	//일반 회원 정보 열람
   @RequestMapping(value="getMemberBoard.mdo", method=RequestMethod.GET)
    public String getRead(CustomerVO vo, Model model) {
	   	System.out.println("getRead() 메서드 실행");
	    System.out.println(vo);
	    CustomerVO user = memberService.getRead(vo);

	    model.addAttribute("user", user);

	    	  return "admin/member_detail.jsp";
	    }
   
	//블랙 회원 정보 열람
   @RequestMapping(value="getBlackMemberBoard.mdo", method=RequestMethod.GET)
    public String getReadBlack(CustomerVO vo, Model model) {
	   	System.out.println("getRead() 메서드 실행");
	    System.out.println(vo);
	    CustomerVO user = memberService.getRead(vo);
	    model.addAttribute("user", user);
	    	  return "admin/member_black_detail.jsp";
	    }
   
   	//일반회원 상세정보 수정
	@RequestMapping(value="/memberUpdate.mdo", method=RequestMethod.GET)
	public String getMemberUpdate(CustomerVO vo) {
		System.out.println("memberUpdate.mdo 실행");
		System.out.println(vo);
		System.out.println("계정상태"+vo.getCustomer_status());
			memberService.getMemberUpdate(vo);
		    	  return "member.mdo";

	}
	
   	//블랙회원 상세정보 수정
	@RequestMapping(value="/blackmemberUpdate.mdo", method=RequestMethod.GET)
	public String getBlackMemberUpdate(CustomerVO vo) {
		System.out.println("blackmemberUpdate.mdo 실행");
		System.out.println(vo);
		System.out.println("계정상태"+vo.getCustomer_status());
			memberService.getMemberUpdate(vo);
		    	return "blackmember.mdo";
	
	}
	

	

   
   

}
