package com.gathering.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.gathering.dto.UserInfoVO;
import com.gathering.service.UserService;

@SessionAttributes("user")
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	// 메인페이지로
	@GetMapping("/main")
	public void mainView() {
		
	}
	
	// 회원가입페이지로
	@GetMapping("/user/join")
	public void joinView() {
		
	}
	
	// 로그인페이지로
	@GetMapping("/user/login")
	public void loginView() {
		
	}
	
	

	@PostMapping("user/loginForm")
	public String loginAction(UserInfoVO vo, Model model) {
		UserInfoVO user = userService.getUser(vo);
		System.out.println(user);
		if(user == null) {
			//아이디 없음
			return "main";
		} else {
			if(user.getPassword().equals(user.getPassword())){
				//정상로그인
				model.addAttribute("user", user);
				return "redirect:/main";
				
			} else {
				return "";
			}
		}
		
		
	}
	
	
}
