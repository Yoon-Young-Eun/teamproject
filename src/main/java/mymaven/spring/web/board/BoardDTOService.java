package mymaven.spring.web.board;

import java.util.List;
public interface BoardDTOService {
		void insertBoard(BoardDTO dto);

		void updateBoard(BoardDTO dto);

		void deleteBoard(BoardDTO dto);

		BoardDTO getBoard(BoardDTO dto);

		List<BoardDTO> getBoardList(BoardDTO dto);
	}