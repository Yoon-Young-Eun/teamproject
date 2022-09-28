package com.semo.web.admin.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.Ad_BoardService;
import com.semo.web.admin.service.UtilService;
import com.semo.web.admin.util.CoolSms;
import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingQVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;


@Controller
public class Ad_QnAController {
	
	@Autowired
	private Ad_BoardService BoardService;
	
	@Autowired
	UtilService utilservice;
	
	@Autowired
	CoolSms coolsms;
	
	// QnA 목록
	@RequestMapping(value="/QnAList.mdo", method=RequestMethod.GET)
	public String getQnAList(PagingQVO qvo, PagingVO pvo, CustomerVO vo, Model model, MessageVO mvo, HttpSession session) {
		System.out.println("QnAList 메서드 실행");
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		//cm_QnA =================================================================		
		
		System.out.println(qvo);
		model.addAttribute("search2",qvo);
		
		// CM페이징 처리
	      if (qvo.getPageNum2() == null) {
	    	  qvo.setPageNum2("1");
	       }
	      
	      System.out.println(qvo.getSelectPage2());
	      if (qvo.getSelectPage2()==null ) {
	    	  qvo.setSelectPage2("5");
	      }
	      
	       int pageSize2 = Integer.parseInt(qvo.getSelectPage2());
	       int currentPage2 = Integer.parseInt(qvo.getPageNum2()); 
	       qvo.setStartRow2((currentPage2 -1)* pageSize2 +1);
	       qvo.setEndRow2(currentPage2 * pageSize2);
	       int count2 =0; 	
	      
	       count2 = BoardService.getCmQnACount(qvo);
	       List<Cm_QnAVO> QnAList0  = null;
	       if(count2 >0) {
	    	   QnAList0= BoardService.getQnAList0(qvo);
	    	  
	       }else {
	    	   QnAList0=Collections.emptyList(); 
	       }

			  if(count2 >0) {
		    	  int pageBlock2 =5;
		    	  int imsi2 =count2 % pageSize2 ==0 ?0:1;
		    	  int pageCount2 = count2/pageSize2 +imsi2;
		    	  int startPage2 =(int)((currentPage2-1)/pageBlock2)*pageBlock2 +1;
		    	  int endPage2 = startPage2 + pageBlock2 -1;
		    	  
		    	  // 추가 if문 : endPage(예:10)이 pageCount(예:9)보다 클경우 endPage의 값은 9로 한다!
		    	  if(endPage2 > pageCount2) {
		    		  endPage2 = pageCount2;
		    	  }
		    	  
		    	  model.addAttribute("pageCount2",pageCount2);
		    	  model.addAttribute("startPage2",startPage2);
		    	  model.addAttribute("endPage2",endPage2);
		    	  model.addAttribute("pageBlock2",pageBlock2);
		          model.addAttribute("count2", count2);
		    	  }

		       Map<String, String> conditionMap2 = new HashMap<String, String>();
		       conditionMap2.put("제목", "board_qna_title");
		       conditionMap2.put("내용", "board_qna_content");
		

		       model.addAttribute("conditionMap2", conditionMap2);
			   model.addAttribute("QnAList0", QnAList0); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
			   System.out.println("고객 AnQ 리스트"+QnAList0);             // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		
		
		
		
		
		
		//ad_QnA =================================================================
		
				System.out.println(pvo);
				model.addAttribute("search",pvo);
				
		// Admin페이징 처리
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
	      
	       count = BoardService.getAdQnACount(pvo);
	       List<Cm_QnAVO> QnAList1 = null;
	       if(count >0) {
	    	   QnAList1= BoardService.getQnAList1(pvo);
	    	  
	       }else {
	    	   QnAList1=Collections.emptyList(); 
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
				conditionMap.put("제목", "admin_qna_title");
				conditionMap.put("내용", "admin_qna_content");
					
			
	       model.addAttribute("conditionMap", conditionMap);
	       model.addAttribute("QnAList1", QnAList1);
	       System.out.println("어드민 AnQ 리스트"+QnAList1);
	       

	       
	       
		

		
		
		
		
		
		
		
		return "/admin/board_QnAlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	
	
	
	
	// QnA 상세
	@RequestMapping(value="/readQnA.mdo", method=RequestMethod.GET)
	public String getReadQnA(Model model, Cm_QnAVO vo, HttpSession session) {	
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		
		System.out.println("admin readQnA()");
		System.out.println(vo);
		int num = vo.getBoard_qna_status();
		System.out.println("STATUS"+vo);
		System.out.println("num"+num);
		if(num == 0) {
			model.addAttribute("QnAInfo_q", BoardService.getReadQnA_q(vo));
			System.out.println(BoardService.getReadQnA_q(vo));
			return "/admin/board_QnA_insert.jsp";
		}else if(num ==1)  {
			model.addAttribute("QnAInfo_a", BoardService.getReadQnA_a(vo));
			System.out.println(BoardService.getReadQnA_a(vo));
			return "/admin/board_QnA.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
		}
		return "/QnAList.mdo";
	}
	
	// QnA 답변 등록
	@RequestMapping(value="/insertQnA.mdo", method=RequestMethod.GET)
	public String insertQnA(Ad_QnAVO avo, Cm_QnAVO cvo, String message, CustomerVO vo, MessageVO mvo, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/login.mdo";
		}
		
		System.out.println("답변 등록 처리");
		System.out.println(avo);
		System.out.println(cvo);
		System.out.println("아이디"+vo.getCustomer_id());
		System.out.println("문자 내용"+mvo.getMessage_content());
		BoardService.insertQnA_ad(avo);
		BoardService.updateQnA_cm(cvo);
		CustomerVO pn = BoardService.getReadPhoneNum(vo);
		
		System.out.println("폰번호"+pn.getCustomer_phone());
		System.out.println("insertQnA_ad: " + avo);
		System.out.println("updateQnA_cm: " + cvo);
		
		
		MessageVO qnamessage = utilservice.getQnAMessageType(mvo);
	       System.out.println(qnamessage);
	       System.out.println("메시지"+ qnamessage);
		
		String phone = pn.getCustomer_phone(); 
		String mess = qnamessage.getMessage_content();
		System.out.println(phone);
		System.out.println(mess);
	      
		coolsms.sendMessage(phone, mess); 
		
		
		return "redirect:QnAList.mdo";
	}
	
}
