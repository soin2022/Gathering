package com.gathering.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gathering.dto.CrewVO;
import com.gathering.dto.GroupInfoVO;
import com.gathering.dto.UserInfoVO;
import com.gathering.paging.Criteria;
import com.gathering.paging.PageMakerDTO;
import com.gathering.service.GroupService;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService groupService;
	
	
	
	// 모임만들기 페이지로 이동
	@GetMapping("/group/createGroup")
	public String createGroupView(HttpSession session) {
		
		UserInfoVO user= (UserInfoVO)session.getAttribute("user");
		
		if(user == null) {
			return "/alerts/mustLoginAlert";
		} else {
			return "/group/createGroup";
		}
	}
	
	// 모임 만들기 
	@PostMapping("/group/creatNewGroup")
	public String createGroupAction(GroupInfoVO vo, Model model) {
		groupService.createNewGroup(vo);
		GroupInfoVO group = groupService.getGroupByGroupName(vo);
		
		model.addAttribute("group_seq", group.getGroup_seq());
		System.out.println(group);
		return "/group/joinForLeader";
	}
	@PostMapping("/group/joinForLeader")
	public String joinForLeader(CrewVO vo, HttpSession session, @RequestParam(value="group_seq") int group_seq) {
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
		
		vo.setUser_id(user.getUser_id());
		vo.setGroup_seq(group_seq);
		vo.setType("1");
		
		groupService.insertCrewLeader(vo);
		System.out.println(vo);
		
		return "/alerts/createGroupComplete";
	}
	
	
	
	
	
	// 모임명 중복체크하기
	@RequestMapping("/group/groupName_check_form")
	public String groupNameCheck(GroupInfoVO vo, Model model) {
		
		
		int result = 0;
			
		if(groupService.getGroupByGroupName(vo) != null) {
			result = 1;
		} else {
			result = -1;
		}
		model.addAttribute("group_name", vo.getGroup_name());
		model.addAttribute("message", result);
		
		return "/group/groupNameCheck";
	}
	
	
	// 활동중인모임리스트로 이동
	@GetMapping("/group/groupList")
	public String getGroupList(Model model, Criteria cri) {
		
		List<GroupInfoVO> groupList = groupService.getGroupListPaging(cri);
		
		model.addAttribute("groupList", groupList);
		
		int total = groupService.getTotalCount(cri);
		
		PageMakerDTO pageMaker = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/group/groupList";		
	}
	
	
	// 모임상세보기로 이동
	@GetMapping("/group/groupDetail")
	public void getGroupDetail() {
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

















