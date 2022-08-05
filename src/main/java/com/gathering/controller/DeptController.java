package com.gathering.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.gathering.mapper.DeptMapper;



//@RestController  제이슨 데이터 확인 어노테이션

@Controller
public class DeptController {
	
	@Autowired
	DeptMapper deptDao;

	/* 제이슨확인
	@GetMapping("/main")
	public List<Dept1>main(){
		
		List<Dept1>list = deptDao.selectList();
		
		return list;
	
	}

	 */
	
	@GetMapping("/index")
	public String index (){
		
				
		return "index";
	}
	
	
}

// sh test
