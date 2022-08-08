package com.gathering.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gathering.dto.UserInfoVO;


@Mapper
public interface UserMapper {
	
	public UserInfoVO getUser(UserInfoVO user);

}
