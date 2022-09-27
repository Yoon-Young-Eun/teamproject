package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semo.web.admin.service.UtilService;
import com.semo.web.admin.util.CoolSmsAll;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

@Controller
public class Ad_MessageController {

	@Autowired
	HttpSession session;
	
	@Autowired
	UtilService utilservice;
	
	@Autowired
	CoolSmsAll coolsmsAll;
	
	@RequestMapping("/sendSMSAll.mdo")
	public String sendSmsAll(MessageVO content) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		
		System.out.println("sendSmsAll메서드");
		System.out.println("보낼 메시지"+content);
		List<CustomerVO> allList = utilservice.sendMessageToAll();
		
		coolsmsAll.sendMessage(allList, content);
		
		return "/supportmessageList.mdo";
	}
	
	
	
	
	@RequestMapping("/supportmessageList.mdo")
	public String getSupportMessageList(Model model, MessageVO mvo, PagingVO pvo ) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		
		System.out.println("getSupportMessageList 메서드 실행");
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
	      
		   count = utilservice.getMessageListCount(pvo);
		   System.out.println("count"+count);
	       List<MessageVO> messageList = null;
	       if(count >0) {
	    	   messageList= utilservice.getSupportMessageList(pvo);
	    	  
	       }else {
	    	   messageList=Collections.emptyList(); 
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
			conditionMap.put("타입", "message_type");
			conditionMap.put("제목", "message_title");
			
		
			model.addAttribute("conditionMap",conditionMap);
			model.addAttribute("messageList",messageList);
			
		return "admin/support_messageList.jsp";
	}
	
	
	
	
	@RequestMapping("/messageread.mdo")
	public String getMessageRead(MessageVO mvo, Model model) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("getMessageRead 메서드 실행");	
        MessageVO read = utilservice.getReadMessage(mvo);
        System.out.println(read);
		model.addAttribute("read",read);
		return "admin/support_messageRead.jsp";
	}        
	
	@RequestMapping("/messageedit.mdo")
	public String MessageEdit(MessageVO mvo, Model model) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("MessageEdit 메서드 실행");
        MessageVO read = utilservice.getReadMessage(mvo);
        System.out.println(read);
		model.addAttribute("read",read);
		return "admin/support_messageEdit.jsp";
	}
	
	@RequestMapping("/insertmessage.mdo")
	public String insertMessage(MessageVO mvo) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("insertMessage 메서드 실행");
		utilservice.insertMessage(mvo);
		return "redirect:/supportmessageList.mdo";
	}
	
	@RequestMapping("/updatemessage.mdo")
	public String updateMessage(MessageVO mvo) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(mvo);
		System.out.println("updateMessage 메서드 실행");
		utilservice.updateMessage(mvo);
		return "/supportmessageList.mdo";
	}
	
	@RequestMapping("/deletemessage.mdo")
	public String deleteMessage(MessageVO mvo) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("updateMessage 메서드 실행");
		utilservice.deleteMessage(mvo);
		return "/supportmessageList.mdo";
	}
	
	
	@RequestMapping("/messageSelectDelete.mdo")
	public String messageSelectedDelete(String[] num, MessageVO mvo) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println(num[0]);
		System.out.println("selected 삭제 처리");
		 
		if(num != null) {
			List<Integer> arr = new ArrayList<Integer>();
			for(int a=0; a<num.length; a++) {
				System.out.println("글삭제 for믄 실행");
				arr.add(Integer.parseInt(num[a]));
				System.out.println(arr.get(a)+"for문 int");
				mvo.setMessage_no(arr.get(a));
				utilservice.deleteMessage(mvo);
				System.out.println(mvo.getMessage_no());
				
			}
		}
		return "/supportmessageList.mdo";
	}
	
	
	
}
