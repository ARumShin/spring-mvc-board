package org.spring.service;

import java.util.List;

import org.spring.domain.BoardVO;

public interface BoardService {

	public List<BoardVO> getBoardList();
	
	public int getListCount();
}
