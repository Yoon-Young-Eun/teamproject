package mymaven.spring.web.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mymaven.spring.web.user.impl.UserDAO;

@Controller
public class LoginController {

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginView(UserVO vo) {
		vo.setId("test");
		vo.setPassword("test");
		return "login.jsp";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
        
	
		if (vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalAccessError("로그인 실패");
		}
		

		UserVO user = userDAO.getUser(vo);
		if (user != null) {
			session.setAttribute("userName", user.getName());
			return "member.do";
		} else {
			return "login.jsp";
		}
	}
}

