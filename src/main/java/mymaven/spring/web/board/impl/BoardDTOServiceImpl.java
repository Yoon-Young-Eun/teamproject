package mymaven.spring.web.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mymaven.spring.web.board.BoardDTO;
import mymaven.spring.web.board.MemberVO;
import mymaven.spring.web.board.RundryService;

@Service("rundryService")
public class BoardDTOServiceImpl implements RundryService {
	
	
	@Autowired
	private BoardDAOMybatis boardDAO;

	@Override
	public void insertBoard(MemberVO vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(MemberVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(MemberVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public MemberVO getBoard(MemberVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<MemberVO> getBoardList(MemberVO vo) {
		return boardDAO.getBoardList(vo);
	}
	
}