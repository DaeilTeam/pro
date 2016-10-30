package com.kedu.board.service;

import java.util.List;

import com.kedu.board.Dto.BoardDto;

public interface BoardService {

	public void create(BoardDto board) throws Exception;
	
	public BoardDto read(int bno) throws Exception;
	
	public void update(BoardDto board) throws Exception;
	
	public void delete(int bno) throws Exception;
	
	public List<BoardDto> listAll() throws Exception;
}
