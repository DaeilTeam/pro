package com.kedu.house.dao;

import java.util.List;

import com.kedu.house.dto.HouseDto;

public interface HouseDao {
	public List<HouseDto> listAll()throws Exception;
	
	public String getTime();
	
	public void insertHouse(HouseDto dto);
}
