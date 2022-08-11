package com.gathering.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gathering.dto.UserInfoVO;
import com.gathering.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageMapper mypageMapper;
	
	@Override
	public void updateUser(UserInfoVO user) {
		mypageMapper.updateUser(user);
	}

	@Override
	public void deleteUser(UserInfoVO user) {
		mypageMapper.deleteUser(user);
	}


}
