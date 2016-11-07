package com.kedu.house.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kedu.house.dto.HouseDto;

@Repository
public class HouseDaoImpl implements HouseDao{
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.kedu.mapper.HouseMapper";

	@Override
	public List<HouseDto> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	
	@Override
	public String getTime() {
		return session.selectOne(namespace+".getTime");
	}
	
	@Override
	public void insertHouse(HouseDto dto){
		session.insert(namespace+".insertHouse",dto);
	}
	
	@Override
	public void addAttach(String fullName) throws Exception{
		
		session.insert(namespace+".addAttach", fullName);
	}
}
