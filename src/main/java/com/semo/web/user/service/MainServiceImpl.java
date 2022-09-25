package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.dao.MainDAO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDAO MainDAO;
	
	@Override
	public List<EventVO> getMain(PagingVO vo) {
		return MainDAO.getMain(vo);
	}
	
	
	
	
	
	
}
