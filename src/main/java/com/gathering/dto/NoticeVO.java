package com.gathering.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class NoticeVO  {

	private int notice_seq;
	private String user_id;
	private String title;
	private String content;
	private int cnt;
	private String regdate;
	private String filename;
	private MultipartFile uploadFile;

	//검색 
	private String searchKeyword;
	
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	 
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	
}
