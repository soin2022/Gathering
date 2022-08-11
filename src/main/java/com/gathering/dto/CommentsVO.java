package com.gathering.dto;

import lombok.Data;

@Data
public class CommentsVO {
	
	private int comment_seq;
	private int user_id;
	private int group_noitce_seq;
	private int group_seq;
	private int group_album_seq;
	private int qna_seq;
	private String content;
	private String regdate;
}
