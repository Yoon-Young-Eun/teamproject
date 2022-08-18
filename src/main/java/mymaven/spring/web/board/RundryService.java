package mymaven.spring.web.board;

import java.util.List;

public interface RundryService {
	void insertBoard(MemberVO vo);

	void updateBoard(MemberVO vo);

	void deleteBoard(MemberVO vo);

	default int getArticleCount() {
		int count=0;
		return count;
	}
	
	MemberVO getBoard(MemberVO vo);

	List<MemberVO> getBoardList(MemberVO vo);
}
