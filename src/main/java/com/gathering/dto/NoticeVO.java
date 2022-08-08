package com.gathering.dto;

import lombok.Data;

@Data
public class NoticeVO {

	private int notice_seq;
	private String user_id;
	private String title;
	private String content;
	private int cnt;
	
	
}
