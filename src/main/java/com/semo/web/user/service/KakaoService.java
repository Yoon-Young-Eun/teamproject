package com.semo.web.user.service;

import java.util.HashMap;

import com.semo.web.user.vo.CustomerVO;

public interface KakaoService {

	public String getAccessToken(String authorize_code);
	
	public HashMap<String, Object> getUserInfo(String access_Token);
	CustomerVO selectUserId(CustomerVO vo);
}