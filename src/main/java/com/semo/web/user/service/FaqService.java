package com.semo.web.user.service;

import java.util.List;

import com.semo.web.user.vo.FaqVO;

public interface FaqService {
	
	List<FaqVO> getFaqList(String de);
	
	List<FaqVO> getFaqList1(String wa);

}
