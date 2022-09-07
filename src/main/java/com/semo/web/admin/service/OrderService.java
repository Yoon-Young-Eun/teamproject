package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.OrderMtVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderVO;

public interface OrderService {
	public List<OrderMtVO> getUserOrderList(PagingVO pvo);
	public int getArticleCount();
	public List<OrderVO> getAdminOrderList(PagingVO pvo);
	public int getMemberArticleCount(PagingVO pvo);
}
