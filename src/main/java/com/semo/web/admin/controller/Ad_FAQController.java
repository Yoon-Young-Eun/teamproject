package com.semo.web.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.vo.FAQVO;

@Controller
public class Ad_FAQController {
	
	@Autowired
	private BoardService BoardService;
	
	// FAQ 등록
	@RequestMapping(value="/insertFAQ.mdo", method=RequestMethod.GET)
	public String insertFAQ(FAQVO vo) {
		System.out.println("FAQ 등록 처리");
		System.out.println(vo);
		
		BoardService.insertFAQ(vo);
		System.out.println();
		
		return "/FAQList.mdo";
	}
	      
	// FAQ 목록
	@RequestMapping(value="/FAQList.mdo", method=RequestMethod.GET)
	public String getFAQList(Model model) {
		System.out.println("admin FAQList()");
		List<FAQVO> FAQList = BoardService.getFAQList();
		model.addAttribute("FAQList", FAQList); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(FAQList);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		return "/admin/board_FAQlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// FAQ 상세
	@RequestMapping(value="/readFAQ.mdo", method=RequestMethod.GET)
	public String getReadFAQ(Model model, FAQVO vo) {	
		System.out.println("admin readFAQ()");
		model.addAttribute("FAQInfo", BoardService.getReadFAQ(vo));
		System.out.println(BoardService.getReadFAQ(vo));
		return "/admin/board_FAQ.jsp"; // <- 이페이지에 데이터를 들고가서 출력함
	}
	
	// FAQ 수정 페이지
	@RequestMapping(value="/updateFAQPage.mdo", method=RequestMethod.GET)
	public String editPage(Model model, FAQVO vo) {	
		System.out.println("updateFAQPage()");
		model.addAttribute("FAQInfo", BoardService.getReadFAQ(vo));
		System.out.println(BoardService.getReadFAQ(vo));
		return "/admin/board_FAQ_edit.jsp";
	}
	
	// FAQ 수정
	@RequestMapping(value="/updateFAQ.mdo", method=RequestMethod.GET)
	public String updateFAQ(FAQVO vo, Model model) {
		System.out.println(vo);
		System.out.println("getUpdateFAQ 메서드 실행");
		BoardService.updateFAQ(vo); // update는 리턴값 없음
		System.out.println("완료!");
		return "/FAQList.mdo"; // 완료후 다시 어드민목록으로 가야되기 때문에 FAQList.mdo로 보내서 
	}
	
	// FAQ 삭제
	@RequestMapping(value="/deleteFAQ.mdo", method=RequestMethod.GET)
	public String deleteFAQ(FAQVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteFAQ 메서드 실행");
		BoardService.deleteFAQ(vo);
		System.out.println("완료!");
		return "/FAQList.mdo";
	}
	
	// FAQ 삭제 (체크박스)
	@RequestMapping("/deleteFAQCheck.mdo")
	public String deleteFAQCheck(String[] tdArr, FAQVO vo) {
		System.out.println(tdArr[0]);
		System.out.println("글 삭제 처리");

		if(tdArr!=null) {
			List<Integer> arr2 = new ArrayList<Integer>();
			for(int a=0; a<tdArr.length; a++) {
				System.out.println("dhsi");
				arr2.add(Integer.parseInt(tdArr[a])) ;
				System.out.println(arr2.get(a)+"tes");
				vo.setBoard_faq_no(arr2.get(a));
				BoardService.deleteFAQ(vo.getBoard_faq_no());
			}
		}
		return "/FAQList.mdo";
	}
	
}
