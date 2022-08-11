package com.gathering.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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
			model.addAttribute("message", "ID가 존재하지 않습니다.");
			return "main";
		} else {
			if(user.getPassword().equals(user.getPassword())){
				//정상로그인
				model.addAttribute("user", user);
				return "redirect:/main";
				
			} else {
				model.addAttribute("message", "비밀번호`가 일치하지 않습니다.");
				return "";
			}
		}
		
		
	}
	
	// 로그아웃 처리
		@GetMapping("/logout")
		public String logout(SessionStatus status) {
			
				status.setComplete(); 	//현재 세션을 종료
				return "redirect:main";
		}
	
	
}
