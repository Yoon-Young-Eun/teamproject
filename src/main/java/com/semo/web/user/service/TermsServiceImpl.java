package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.dao.TermsDAO;

@Service
public class TermsServiceImpl implements TermsService {

	@Autowired
	TermsDAO TermsDAO;
	
	@Override
	public TermsVO getTerms3(TermsVO vo) {
		return TermsDAO.getTerms3(vo);
	}
	
	@Override
	public TermsVO getTerms4(TermsVO vo) {
		return TermsDAO.getTerms4(vo);
	}

	@Override
	public List<TermsVO> getTermsList() {
		return TermsDAO.getTermsList();
	}

	

}
