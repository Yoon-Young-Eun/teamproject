package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.PagingVO;

public interface OrderService {
	public List<CmOrderVO> getUserOrderList(PagingVO pvo);
	public int getArticleCount(PagingVO pvo);
}
