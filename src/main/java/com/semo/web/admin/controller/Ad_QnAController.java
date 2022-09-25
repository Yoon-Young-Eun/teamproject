package com.semo.web.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.service.UtilService;
import com.semo.web.admin.util.CoolSms;
import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;


@Controller
public class Ad_QnAController {
	
	@Autowired
	private BoardService BoardService;
	
	@Autowired
	UtilService utilservice;
	
	@Autowired
	CoolSms coolsms;
	
	// QnA 목록
	@RequestMapping(value="/QnAList.mdo", method=RequestMethod.GET)
	public String getQnAList(CustomerVO vo, Model model, MessageVO mvo, HttpSession session) {
		
		//세션 유무확인 
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
		}
		
		System.out.println("admin QnAList()");
		List<Cm_QnAVO> QnAList0 = BoardService.getQnAList0();
		model.addAttribute("QnAList0", QnAList0); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(QnAList0);             // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		
		List<Cm_QnAVO> QnAList1 = BoardService.getQnAList1();
		model.addAttribute("QnAList1", QnAList1);
		System.out.println(QnAList1);
		return "/admin/board_QnAlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// QnA 상세
	@RequestMapping(value="/readQnA.mdo", method=RequestMethod.GET)
	public String getReadQnA(Model model, Cm_QnAVO vo, HttpSession session) {	
		
		//세션 유무확인
		AdminVO admin = (AdminVO)session.getAttribute("admin");
		
		if(admin == null) {
				System.out.println("세션 정보가 없습니다.");
				return "redirect:/admin/login.jsp";
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
				return "redirect:/admin/login.jsp";
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
