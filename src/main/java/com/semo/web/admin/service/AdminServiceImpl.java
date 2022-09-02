package com.semo.web.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.AdminDAO;
import com.semo.web.admin.vo.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminDAO admindao;
	
	@Override
	public AdminVO getUser(AdminVO vo) {
		return  admindao.getUser(vo);
	}

}
