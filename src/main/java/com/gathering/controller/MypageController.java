package com.gathering.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.gathering.dto.UserInfoVO;
import com.gathering.service.MypageService;
import com.gathering.service.UserService;

@SessionAttributes("user")
@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private UserService userService;
	
	
	// 마이페이지(관심있는모임리스트)로 이동
	@GetMapping("/mypage/interestGroupList")
	public void getInterestGroupList() {
		
	}
	
	// 내 정보관리로 이동
	@GetMapping("/mypage/myInfo")
	public void myInfoView() {
		
	}
	
	// 회원정보 수정하기
	@PostMapping("/mypage/userUpdateForm")
	public String updateUserAction(UserInfoVO vo, Model model) {
				
		mypageService.updateUser(vo);
		model.addAttribute("user", vo);
		
		System.out.println("[정보수정완료]" + vo);
		
		return "/mypage/interestGroupList";
	}
	
	
	// 회원탈퇴페이지로 이동
	@GetMapping("/mypage/deleteUser")
	public void deleteUserView() {
		
	}
	
	// 회원탈퇴하기
	@PostMapping("/mypage/userDeleteForm")
	public String deleteUserAction(UserInfoVO vo, SessionStatus status, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserInfoVO user = userService.getUser(vo);
		
		
		if(user != null && vo.getUser_id().equals(user.getUser_id()) && vo.getPassword().equals(user.getPassword())) {
			mypageService.deleteUser(vo);
			status.setComplete();
			
			return "/alerts/deleteUserAlert";
		} else {
			model.addAttribute("message", "아이디 또는 비밀번호가 틀렸습니다.");
			return "/mypage/deleteUser";
		} 
		 
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
