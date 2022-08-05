package com.gathering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gathering.dto.Dept1;
import com.gathering.mapper.DeptMapper;

public class DeptServiceImple implements DeptService {
	
	@Autowired
	DeptMapper deptDao;
	
	@Override
	public List<Dept1> selectList() {
		
		return deptDao.selectList();
	}

}
