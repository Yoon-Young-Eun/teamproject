package com.semo.web.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.service.BoardService;
import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.user.vo.Cm_QnAVO;


@Controller
public class Ad_QnAController {
	
	@Autowired
	private BoardService BoardService;
	
	// QnA 목록
	@RequestMapping(value="/QnAList.mdo", method=RequestMethod.GET)
	public String getQnAList(Model model) {
		System.out.println("admin QnAList()");
		List<Cm_QnAVO> QnAList0 = BoardService.getQnAList0();
		model.addAttribute("QnAList0", QnAList0); // model에 저장해서 보내면 jsp에서 불러 사용할 수 있는데.
		System.out.println(QnAList0);              // for문에서는 for문 id이름.컬럼명 ${for문의id이름.컬럼명}
		List<Cm_QnAVO> QnAList1 = BoardService.getQnAList1();
		model.addAttribute("QnAList1", QnAList1);
		System.out.println(QnAList1);
		return "/admin/board_QnAlist.jsp";            // 그냥 불러올때는 model의 키 이름.컬럼명 = ${xxxxList.컬럼명}
	}
	
	// QnA 상세
	@RequestMapping(value="/readQnA.mdo", method=RequestMethod.GET)
	public String getReadQnA(Model model, Cm_QnAVO vo) {	
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
	public String insertQnA(Ad_QnAVO avo, Cm_QnAVO cvo) {
		System.out.println("답변 등록 처리");
		System.out.println(avo);
		System.out.println(cvo);
		BoardService.insertQnA_ad(avo);
		BoardService.updateQnA_cm(cvo);
		System.out.println("insertQnA_ad: " + avo);
		System.out.println("updateQnA_cm: " + cvo);
		return "redirect:QnAList.mdo";
	}
	
}
