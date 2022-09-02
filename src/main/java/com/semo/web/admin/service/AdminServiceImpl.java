package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.AdminDAO;
import com.semo.web.admin.vo.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminDAO admindao;
	
	@Override
	public AdminVO getAdmin(AdminVO vo) {
		return  admindao.getAdmin(vo);
	}

	@Override
	public void setAdmin(AdminVO vo) {
		admindao.setAdmin(vo);
	}

	@Override
	public List<AdminVO> getAdminList() {
		return admindao.getAdminList();
	}
	
	

}
