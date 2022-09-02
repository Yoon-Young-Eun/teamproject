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

	@Override
	public AdminVO getReadStaff(AdminVO vo) {
		return admindao.getReadStaff(vo);
	}

	@Override
	public void updateStaff(AdminVO vo) {
		admindao.updateStaff(vo);
	}

	@Override
	public void deleteStaff(AdminVO vo) {
		admindao.deleteStaff(vo);
		
	}
	
	

}
