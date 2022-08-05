package com.gathering.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gathering.dto.Dept1;

@Mapper
public interface DeptMapper {
	public List<Dept1> selectList();
	
	
	
}
