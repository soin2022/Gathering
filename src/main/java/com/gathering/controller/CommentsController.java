package com.gathering.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gathering.dto.CommentsVO;
import com.gathering.dto.QnaVO;
import com.gathering.dto.UserInfoVO;
import com.gathering.paging.Criteria;
import com.gathering.paging.PageMakerDTO;
import com.gathering.service.CommentsService;

@RestController
public class CommentsController {
	
	@Autowired
	private CommentsService commentsService;

	//Qna 댓글 저장
	@PostMapping("/comments_insert")
	public String insertQna(CommentsVO vo, HttpSession session) {
		
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
		
		if(user== null) {
				return "user/login";
		} else {
				vo.setUser_id(user.getUser_id());
				vo.setQna_seq(vo.getQna_seq());
				
				
				if(commentsService.insertComment(vo) > 0 ) {
				    return "success";
		         } else {
		            return "fail";
		         }
		}
	}
	
	
	//Qna리스트 
	@GetMapping("/commnets_list")
	public String getQnaList(Model model, Criteria cri) {
		
		List<CommentsVO> commentsList = commentsService.commentListWithPaging(cri);

		System.out.println(commentsList.toString());
		model.addAttribute("commentsList", commentsList);
		
		int total = commentsService.getTotal(cri);

		PageMakerDTO pageMaker = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMaker);
		
		return "qna/qnaView";
			
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
