package com.semo.web.admin.service;

<<<<<<< HEAD
import java.util.List;
=======
public interface OrderService {
	
>>>>>>> main

import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.PagingVO;

public interface OrderService {
	public List<CmOrderVO> getUserOrderList(PagingVO pvo);
	public int getArticleCount(PagingVO pvo);
}
