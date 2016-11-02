package com.kedu.house.service;

import java.util.List;

import com.kedu.house.dto.HouseDto;

public interface HouseService {
	public List<HouseDto> listAll()throws Exception;
	
	public void insertHouse(HouseDto house)throws Exception;
	
//	public List<HouseDto> searchHouse(String keyword,int display,int start)throws Exception;
}
