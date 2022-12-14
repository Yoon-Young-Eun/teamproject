package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

public interface AdminService {
//
	public AdminVO getAdmin(AdminVO vo); 
	public void setAdmin(AdminVO vo);
	public List<AdminVO> getAdminList(PagingVO pvo);
	public AdminVO getReadStaff(AdminVO vo);
	public void updateStaff(AdminVO vo);
	public void deleteStaff(AdminVO vo);
	public void selectedDelete(int num);
	public int getArticleCount(PagingVO pvo);

	
	
	
	
}
