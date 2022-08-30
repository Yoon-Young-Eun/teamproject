package mymaven.spring.web.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mymaven.spring.web.user.impl.UserDAO;

@Controller
public class LoginController {

	@RequestMapping(value = "/login-origin.do", method = RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("로그인 화면으로 이동");
		vo.setId("test");
		vo.setPassword("test");
		return "login.jsp";
	}

	@RequestMapping(value = "/login-origin.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
        
		//아이디를 입력하지 않고 로그인하면 오류 발생
		System.out.println("로그인 인증 처리");
		if (vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalAccessError("아이디는 반드시 입력해야 합니다.");
		}
		
		System.out.println("로그인 처리");
		UserVO user = userDAO.getUser(vo);
		System.out.println(userDAO.getUser(vo));
		if (user != null) {
			session.setAttribute("userName", user.getName());
			return "member.do";
		} else {
			return "login.jsp";
		}
	}
}

