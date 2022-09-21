package com.semo.web.user.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.user.service.KakaoService;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class KakaoController {
 
	
	@Autowired
	KakaoService kakaoservice;
	
	
	@GetMapping("kakao.do")
	@ResponseBody
	public String kakao() throws IOException {
		String resource = "config/kakao2.properties";
		Properties properties = new Properties();
		Reader reader = Resources.getResourceAsReader(resource);
		properties.load(reader);

		String reqUrl = "https://kauth.kakao.com/oauth/authorize" + "?client_id=" + properties.getProperty("client_id")
				+ "&redirect_uri=" + properties.getProperty("redirect_uri") + "&response_type=code";
		System.out.println(reqUrl);
		return reqUrl;

	}
	
	@RequestMapping(value="/kakaoLogin.do",method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value="code",required = false) String code,CustomerVO vo,Model model,HttpSession session) throws Exception{
		System.out.println("##########"+code);
		
		String access_Token = kakaoservice.getAccessToken(code);
		System.out.println("###access_Token### : "+access_Token);
		
		
		HashMap<String, Object> userInfo = kakaoservice.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		String userId = (String) userInfo.get("id");
		model.addAttribute("userInfo",userId);
		System.out.println(userId);
		System.out.println(userInfo.get("id"));
		CustomerVO User = new CustomerVO();
		vo.setCustomer_id(userId);
		System.out.println("냥냥냥"+vo.getCustomer_id());
		
		User = kakaoservice.selectUserId(vo);
		System.out.println("뇽뇽뇽"+User);
		model.addAttribute("UserId",vo);
		System.out.println("꺆꺆"+vo);
		
		System.out.println("@@@@@@@"+access_Token);
		session.setAttribute("access_Token", access_Token);
		session.setAttribute("num",User.getCustomer_no());
		session.setAttribute("UserName",User.getCustomer_name());
		
		if(User != null) {
			model.addAttribute("Info",User);
			session.setAttribute("id", userId);				
			System.out.println("넘버넘버"+User.getCustomer_no());
			System.out.println("뇽뇽뇽"+User);
			System.out.println("가입정보가 있음");
			session.getAttribute("access_Token");
			System.out.println(session.getAttribute("access_Token"));
			return "redirect:/views/logined-main.jsp";
		}else {
			return "/views/kakaoform.jsp";
		}
		
		
		
	}
	
	@RequestMapping(value="/kakoaLogout.do")
	public String KakaoLogout(Model model,HttpSession session)throws IOException{

		session.invalidate();

		return "/views/loginde-main.jsp";
	}
	
}
