package com.gathering.service;

import java.util.List;

import com.gathering.dto.CommentsVO;
import com.gathering.dto.QnaVO;
import com.gathering.paging.Criteria;

public interface CommentsService {

	int insertComment(CommentsVO vo);

	//Qna댓글 총 갯수
	int getTotal(Criteria cri);

	//Qna댓글 리스트
	List<CommentsVO> commentList(int qna_seq);

	// Qna 페이징 리스트
	List<CommentsVO> commentListWithPaging(Criteria cri);

}