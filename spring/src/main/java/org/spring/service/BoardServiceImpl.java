package org.spring.service;

import java.util.List;

import org.spring.domain.BoardVO;
import org.spring.mapper.BoardAttachMapper;
import org.spring.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
//	@Setter(onMethod_ = @Autowired)
//	private BoardAttachMapper attachMapper;

	@Override
	public List<BoardVO> getBoardList() {
		log.info("getBoardList()");
		
		return mapper.getBoardList();
	}

	@Override
	public int getListCount() {
		return mapper.getListCount();	
	}
	
	
	
	
}
