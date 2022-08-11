package com.gathering.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gathering.dto.UserInfoVO;

@Mapper
public interface MypageMapper {

	// 회원정보수정 
	public void updateUser(UserInfoVO user);
	
	// 회원탈퇴
	public void deleteUser(UserInfoVO user);
	
}
