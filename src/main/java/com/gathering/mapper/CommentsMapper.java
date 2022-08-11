package com.gathering.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gathering.dto.CommentsVO;
import com.gathering.paging.Criteria;

@Mapper
public interface CommentsMapper {
	
	//Qna 댓글 작성
	public int insertComment(CommentsVO vo);
	
	//Qna댓글 총 갯수
	public int getTotal(Criteria cri);
	
	//Qna댓글 리스트
	public List<CommentsVO> commentList (int qna_seq);
	
	// Qna 페이징 리스트
	public List<CommentsVO> commentListWithPaging(Criteria cri);
	
	
	
}