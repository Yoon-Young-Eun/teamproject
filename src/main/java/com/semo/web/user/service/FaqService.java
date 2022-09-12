package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.FAQVO;

public interface FaqService {
	
	List<FAQVO> getFaqList(String de);
	
	List<FAQVO> getFaqList1(String wa);

}
