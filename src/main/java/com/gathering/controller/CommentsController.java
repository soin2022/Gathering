package com.gathering.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gathering.dto.CommentsVO;
import com.gathering.dto.QnaVO;
import com.gathering.dto.UserInfoVO;
import com.gathering.service.CommentsService;

@RestController
public class CommentsController {
	
	@Autowired
	private CommentsService commentsService;

	//Qna 댓글 저장
	@PostMapping("/comments_insert")
	public String insertQna(QnaVO qVo, CommentsVO vo, HttpSession session) {
		
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
		
		if(user== null) {
				return "user/login";
		} else {
				vo.setUser_id(user.getUser_id());
				vo.setQna_seq(qVo.getQna_seq());
				
				if(commentsService.insertComment(vo) > 0) {
		            return "success";
		         } else {
		            return "fail";
		         }
	  }
}
	
	//Qna리스트 
	@GetMapping(value="/commnets_list", produces="application/json; charset=UTF-8")
	public Map<String, Object> commentsList(CommentsVO vo,  HttpSession session) {
		

		//화면으로 반환할 데이터를 저장할 Map 작성
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 상품에 대한 댓글 목록 조회
		List<CommentsVO> commentList = commentsService.commentList(vo.getQna_seq());

		map.put("commentList", commentList);
		
		return map;
			
	}
	
	
	
	
}