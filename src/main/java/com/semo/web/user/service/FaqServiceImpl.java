package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.FAQVO;
import com.semo.web.user.dao.FaqDAO;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	FaqDAO faqdao;

	@Override
	public List<FAQVO> getFaqList(String de) {
		
		return faqdao.getFaqList(de);
	}

	@Override
	public List<FAQVO> getFaqList1(String wa) {
		
		return faqdao.getFaqList1(wa);
	}

}

