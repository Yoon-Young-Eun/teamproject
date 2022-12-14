package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;

public interface StoreService {
	
	public void insertStore(StoreVO vo);
	public List<StoreVO> getStoreList(PagingVO pvo);
	public StoreVO getReadStore(StoreVO vo);
	public void updateStore(StoreVO vo);
	public void deleteStore(StoreVO vo);
	public void deleteStore(int no);
	public int getArticleCount(PagingVO pvo);
}
