package mymaven.spring.web.board;

import java.util.List;

public interface RundryService {
	void insertBoard(MemberVO vo);

	void updateBoard(MemberVO vo);

	void deleteBoard(MemberVO vo);

	int getArticleCount();
	
	MemberVO getBoard(MemberVO vo);
	
	List<MessageVO> getMessageList(MessageVO vo);

	List<MemberVO> getBoardList(MemberVO vo);
	
	
}
