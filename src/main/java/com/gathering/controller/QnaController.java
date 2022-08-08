package com.gathering.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnaController {
	
	// Q&A 게시판으로 이동
	@GetMapping("/qna/qnaList")
	public void getQnaList() {
		
	}
	
	
}
