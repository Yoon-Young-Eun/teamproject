package com.semo.web.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.user.service.BoardService;
import com.semo.web.user.service.OrderService;
import com.semo.web.user.vo.OrderVO;

import edu.emory.mathcs.backport.java.util.Collections;

@Controller
public class BoardController {
	
	@Autowired
	BoardService BoardService;
	@Autowired
	OrderService OrderService;

	//이벤트
	@RequestMapping(value="/getBoardEventList.do", method=RequestMethod.GET)
	public String getBoardEventList(Model model) {
		System.out.println("admin eventList()");
		List<EventVO> EventList = BoardService.getBoardEventList();
		model.addAttribute("EventList", EventList);
		System.out.println("asdadas"+EventList);
		return "/service/serviceEventlist.jsp";
	}
	
	@RequestMapping("/getBoardEvent.do")
	public String getBoardEvent(EventVO vo, Model model) {
		System.out.println("글 상세 보기 처리");
		System.out.println(vo);
		String event_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/event/";
		EventVO vos =BoardService.getBoardEvent(vo);
		System.out.println("vos"+ vos);
		String filename = vos.getBoard_event_filepath().replace(event_filepath, "");
		String filename2 = vos.getBanner_filepath().replace(event_filepath, "");
		System.out.println("vos"+ vos);
		model.addAttribute("event", vos);
		model.addAttribute("filename", filename);
		model.addAttribute("filename2", filename2);
		return "/service/serviceEvent.jsp";
	}
	
	
	//공지사항
	@RequestMapping(value="/getBoardList.do", method= RequestMethod.GET)
	public String getBoardList(PagingVO pvo, NoticeVO vo, Model model) {
	      System.out.println("글 목록 처리");
	      
	      model.addAttribute("search",pvo);
	      System.out.println(pvo);
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
	      System.out.println("currentpage"+currentPage);
	      pvo.setStartRow((currentPage - 1)*pageSize+1);
	      pvo.setEndRow(currentPage * pageSize);
	      int count=0;
	      
	      count=BoardService.getBoardCount(pvo);
	      System.out.println(count);
	      List<NoticeVO> boardList = null;
	      if(count >0) {
	    	  boardList = BoardService.getBoardList(pvo);
	      }else {
	    	  boardList =Collections.emptyList();
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
	    	  
	          model.addAttribute("count", count);
	    	  model.addAttribute("pageCount",pageCount);
	    	  model.addAttribute("startPage",startPage);
	    	  model.addAttribute("endPage",endPage);
	    	  model.addAttribute("pageBlock",pageBlock);

	          model.addAttribute("count", count);

	    	  }
	      
	      Map<String, String> condition = new HashMap<String, String>();
	      condition.put("제목", "notice_title");
	      condition.put("내용", "notice_content");
	      
	      model.addAttribute("condition", condition);
	      model.addAttribute("boardList", boardList);
	      return "/service/serviceNotice.jsp";
	   }
	
	
	@RequestMapping("/getBoard.do")
   public String getBoard(NoticeVO vo, Model model) {
      System.out.println("글 상세 보기 처리");
      String notice_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/board/";
      NoticeVO vos=BoardService.getBoard(vo);
      String filename = vos.getNotice_filepath().replace(notice_filepath, "");
      System.out.println(vos);
      model.addAttribute("board", vos);
      model.addAttribute("filename", filename);
      return "/service/getNotice.jsp";
   }
	
	@RequestMapping("/insertReview.do")
	@ResponseBody
	public String insertReview(ReviewVO vo, OrderVO ovo, HttpSession session) {
	
		session.getAttribute("id");
		if (session.getAttribute("id") != null) {
			System.out.println("리뷰 등록 처리");
			System.out.println(vo);
			
			BoardService.insertReview(vo);
			OrderService.updateReviewStatus(ovo);
			System.out.println();
			
			return "/myorderlist.do";
		}
		return "/login.do";
	}
	
	
}
