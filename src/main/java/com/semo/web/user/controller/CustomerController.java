	package com.semo.web.user.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.service.CoolSmsUser;
import com.semo.web.user.service.CustomerService;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class CustomerController {

	@Autowired
	CustomerService userservice;

	@Autowired
	CoolSmsUser coolsms;

	@Resource(name = "bcryptPasswordEncoder") // Autowired와 유사
	BCryptPasswordEncoder encoder; // 암호화 클래스

	// 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(CustomerVO vo, OrderVO order, Model model, HttpSession session) {

		System.out.println(vo);
		System.out.println("login method");
		
		// CustomerVO vo2 = userservice.getMember(vo); 기존의 메서드는 아이디 비번을 모두 비교하기에 사용이 적합하지 않음
		System.out.println(userservice.getMember(vo));
		// 입력한 ID를 통해 DB에 저장되어있는 암호화된 passwd를 포함한 회원정보를 가져옴
		if(userservice.matchPasswd(vo) == null) {
			System.out.println("잘못된 아이디입니다.");
			return "/views/login.jsp";
		}
		
		CustomerVO vo2 = userservice.matchPasswd(vo);
		System.out.println("vo2" + vo2);
		System.out.println(vo2);

		// 복호화 비교(DB에 저장된 암호화된 passwd과 사용자가 입력한 passwd를 matches()메서드를 통해 동일 여부 확인
		if (encoder.matches(vo.getCustomer_passwd(), vo2.getCustomer_passwd())) {
			System.out.println("로그인!");
			session.setAttribute("user_name", vo2.getCustomer_name());
			session.setAttribute("id", vo2.getCustomer_id());
			session.setAttribute("num", vo2.getCustomer_no());
			return "/views/logined-main.jsp";
		} else {
			System.out.println("로그인 실패");
			return "/views/login.jsp";
		}

	}

	// 로그아웃
	@RequestMapping(value = "/logout.do", method = RequestMethod.POST)
	public String logout(HttpSession session, Model model, CustomerVO vo) {

		session.setAttribute("user_name", null);
		session.setAttribute("id", null);
		session.setAttribute("num", null);
		session.invalidate();
		System.out.println("정상적인 로그아웃");
		return "/views/main.jsp";
	}

	// 아이디 중복 체크
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("id") String id, CustomerVO vo, Model model) {
		System.out.println("idCheck");

		int result = userservice.idCheck(id);

		System.out.println(vo);

		return result;
	}

	// 본인인증
	@RequestMapping(value = "/phoneCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public String sendSMS(@RequestParam("phone") String userPhoneNumber) {
		// 휴대폰 문자보내기
		int randomNumber = (int) ((Math.random() * (9999 - 1000 + 1)) + 1000); // 난수생성
		System.out.println(randomNumber);
		coolsms.certifiedPhoneNumber(userPhoneNumber, randomNumber);

		return Integer.toString(randomNumber);
	}

	// 회원가입 완료 페이지 이동
	@RequestMapping(value = "/complete.do", method = RequestMethod.POST)
	public String join(CustomerVO vo, HttpSession session, Model model) {
		System.out.println("join check");
		System.out.println(vo);
		
		//입력한 회원가입 정보를 vo2에 저장
		CustomerVO vo2 = vo;
		//vo2의 passwd() 메서드에 인코딩(암호화)한 passwd를 저장
		vo2.setCustomer_passwd(encoder.encode(vo.getCustomer_passwd()));
		System.out.println("암호회된 vo2"+vo2);
		
		//암호화된 passwd를 회원가입 정보에 입력
		userservice.insertMember(vo2);
		model.addAttribute("user", vo2.getCustomer_name());
		System.out.println(vo2.getCustomer_name());
		return "/views/complete.jsp";
	}
	
	
	
	//이용약관
	@RequestMapping(value="/getTerms.do", method=RequestMethod.GET)
	public String getTerms(TermsVO vo, Model m) {
		System.out.println("vo가져오기");
		
		List<TermsVO> tvo = userservice.getTerms(vo);
		m.addAttribute("tlist", tvo);
		System.out.println("tvo"+tvo);
		return "/views/terms.jsp";
	}
}
