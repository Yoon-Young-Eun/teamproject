package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.EventVO;

public interface BoardService {
	public EventVO getBoardEvent(EventVO vo);
	public List<BannerVO> getBoardEventList();
}
