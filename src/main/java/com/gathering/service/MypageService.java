package com.gathering.service;

import com.gathering.dto.UserInfoVO;

public interface MypageService {

	public void updateUser(UserInfoVO user);
	
	public void deleteUser(UserInfoVO user);
	
}
