package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.TermsVO;

public interface TermsService {
	public List<TermsVO> getTermsList();
	public TermsVO getTermsMain(TermsVO vo);
	public TermsVO getTerms4(TermsVO vo);
}
