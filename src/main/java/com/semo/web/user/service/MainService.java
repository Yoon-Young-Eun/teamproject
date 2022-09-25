package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;

public interface MainService {
	
	public List<EventVO> getMain(PagingVO vo);
	
}
