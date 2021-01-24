package org.spring.mapper;

import java.util.List;

import org.spring.domain.BoardVO;

public interface BoardMapper {

	public List<BoardVO> getBoardList();
	
	public int getListCount();
	
	

}
