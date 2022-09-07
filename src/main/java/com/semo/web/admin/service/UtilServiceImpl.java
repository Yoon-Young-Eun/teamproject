package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.UtilDAO;
import com.semo.web.admin.vo.MessageVO;

@Service
public class UtilServiceImpl implements UtilService {
	
	@Autowired
	UtilDAO utildao;
	
	@Override
	public List<MessageVO> getMessageList(MessageVO vo) {
		return utildao.getMessageList(vo);
	}
}
