package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.ReviewVO;

public interface MainService {
	
	public List<EventVO> getMain(PagingVO vo);
	public List<ReviewVO> getMainReview();
}
