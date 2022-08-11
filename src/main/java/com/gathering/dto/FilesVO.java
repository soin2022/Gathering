package com.gathering.dto;

import lombok.Data;

@Data
public class FilesVO {
	private int file_seq;
	private int notice_seq;
	private String filename;
	
	//추가 요소
	
	/* 경로 */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
}
