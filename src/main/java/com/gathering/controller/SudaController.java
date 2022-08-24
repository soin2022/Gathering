package com.gathering.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.gathering.dto.CrewInfoVIewVO;
import com.gathering.dto.GroupInfoVO;
import com.gathering.dto.SudaVO;
import com.gathering.dto.UserInfoVO;
import com.gathering.paging.Criteria;
import com.gathering.paging.PageMakerDTO;
import com.gathering.service.GroupNoticeService;
import com.gathering.service.GroupService;
import com.gathering.service.SudaService;

@SessionAttributes("user")
@Controller
public class SudaController {
	private final Logger logger = LoggerFactory.getLogger("SudaController의 로그");

	@Autowired
	private SudaService sudaService;
	
	@Autowired
	private GroupNoticeService groupNoticeService;
	
	@Autowired
	private GroupService groupService;

////////////////////////////////////////////////////////////////

	// 수다방 리스트
	@GetMapping("/group/groupSuda")
	public String getsudaList(HttpSession session,GroupInfoVO groupInfoVO,Model model,  SudaVO sudaVO,  Criteria cri) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

		if (user == null) {
			return "user/login";
		} else {
			//해당모임에 가입하지 않은 사람은 해당 게시물에 접근할 수 없음
			List<CrewInfoVIewVO> crew = groupNoticeService.getCrewList(groupInfoVO.getGroup_seq(), user.getUser_id());
			System.out.println("-------" + crew.toString() + "---------");
			if(crew.isEmpty()) {
				return "/alerts/mustJoinAlert";		
			} else {
				
			// 해당모임에 가입된 사람이면 실행	
			List<CrewInfoVIewVO> crewList = groupService.getGroupCrews(groupInfoVO.getGroup_seq());
			model.addAttribute("crewList", crewList);	
				
			GroupInfoVO group = groupService.getGroupDetail(groupInfoVO.getGroup_seq());
			model.addAttribute("group", group);
			
			List<SudaVO> sudaList = sudaService.getListSudaPaging(cri);
			
			
			model.addAttribute("sudaList", sudaList);
			
			HashMap<String, Object> map = new HashMap<String, Object> ();
			
			map.put("cri", cri);
			map.put("group_seq", groupInfoVO.getGroup_seq());
			

			int total = sudaService.getSudaTotal(map);
			
			PageMakerDTO pageMake = new PageMakerDTO(cri, total);
			
			model.addAttribute("pageMaker", pageMake);
			
			System.out.println(sudaList);
			
			return "/group/groupSuda";

		}
	}
}

	// 수다 등록폼 이동
	@RequestMapping("/group/sudaForm")
	public String noticeCreate(HttpSession session,SudaVO sudaVO) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

		if (user == null) {
			return "user/login";
		} else {

		return "/group/groupSudaForm";
		}
	}

	// 수다 주제 등록하기
	@RequestMapping("/insertSuda")
	public String sudaInsert(HttpSession session,Model model, SudaVO sudaVO) {
			UserInfoVO user = (UserInfoVO) session.getAttribute("user");
		
			sudaVO.setUser_id(user.getUser_id());
			sudaVO.setGroup_seq(sudaVO.getGroup_seq());
			sudaService.insertSuda(sudaVO);

			System.out.println(sudaVO);
			return "/group/sudaForm?group_seq="+sudaVO.getGroup_seq();
		}

	

	// 수다 상세 보기
	@RequestMapping("/sudaDetail")
	public String sudaDetail(SudaVO sudaVO, HttpSession session,Model model) {
		SudaVO suda = sudaService.getSudaView(sudaVO.getSuda_seq());
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

		if (user == null) {
			return "user/login";

		} else {
			model.addAttribute("sudaInfo",suda);
			System.out.println(suda);
			return "/group/groupSudaDetail";
		}

	}
	
	//수다 삭제하기
	@RequestMapping("/sudadelete")
	public String sudaDelete(HttpSession session, SudaVO sudaVO,Model model) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

			if (user == null) {
				return "user/login";
			} else {
				sudaService.deleteSuda(sudaVO.getSuda_seq());
				return "/group/groupSuda?group_seq="+sudaVO.getGroup_seq();
			}
		}

}
