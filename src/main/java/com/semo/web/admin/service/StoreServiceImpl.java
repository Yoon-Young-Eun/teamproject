package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.StoreDAO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;

@Service
public class StoreServiceImpl implements StoreService {
	@Autowired
	private StoreDAO StoreDAO;
	
	@Override
	public void insertStore(StoreVO vo) {
		StoreDAO.insertStore(vo);
	}

	@Override
	public List<StoreVO> getStoreList(PagingVO pvo) {
		return StoreDAO.getStoreList(pvo);
	}
	
	@Override
	public int getArticleCount(PagingVO pvo) {
		return StoreDAO.getArticleCount(pvo);
	}

	@Override
	public StoreVO getReadStore(StoreVO vo) {
		return StoreDAO.getReadStore(vo);
	}

	@Override
	public void updateStore(StoreVO vo) {
		StoreDAO.updateStore(vo);
	}

	@Override
	public void deleteStore(StoreVO vo) {
		StoreDAO.deleteStore(vo);
		
	}

	@Override
	public void deleteStore(int no) {
		StoreDAO.deleteStore(no);
	}

}
