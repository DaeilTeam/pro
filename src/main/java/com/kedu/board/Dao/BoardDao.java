package com.kedu.board.Dao;

import java.util.List;

import com.kedu.board.Dto.BoardDto;

public interface BoardDao {

	public void create(BoardDto dto) throws Exception;
	
	public BoardDto read(int bno) throws Exception;
	
	public void update(BoardDto dto) throws Exception;
	
	public void delete(int bno) throws Exception;
	
	public List<BoardDto> listAll() throws Exception;
}
