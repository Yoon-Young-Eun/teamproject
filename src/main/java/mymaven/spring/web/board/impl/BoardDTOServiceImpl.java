package mymaven.spring.web.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mymaven.spring.web.board.BoardDTO;
import mymaven.spring.web.board.MemberVO;
import mymaven.spring.web.board.MessageVO;
import mymaven.spring.web.board.RundryService;

@Service("rundryService")
public class BoardDTOServiceImpl implements RundryService {
	
	
	//DAO 클래스가 변경되어도 클라이언트에 해당하는 BoardController는 수정할 필요가 없다.	
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

	@Override
	public int getArticleCount() {
		int count=0;
		return count;
	}

	@Override
	public List<MessageVO> getMessageList(MessageVO vo) {
		return boardDAO.getMessageList(vo);
	}


	
}