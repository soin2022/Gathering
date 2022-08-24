package com.gathering.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.gathering.dto.AlbumVO;
import com.gathering.dto.CrewInfoVIewVO;
import com.gathering.dto.GroupInfoVO;
import com.gathering.dto.UserInfoVO;
import com.gathering.mapper.AttachMapper;
import com.gathering.paging.Criteria;
import com.gathering.paging.PageMakerDTO;
import com.gathering.service.AlbumService;
import com.gathering.service.GroupNoticeService;
import com.gathering.service.GroupService;

@Controller
@SessionAttributes("user")
public class GroupAlbumController {
	private final Logger logger = LoggerFactory.getLogger("GroupAlbumController의 로그");
	@Autowired
	AlbumService albumService;
	@Autowired
	AttachMapper attachMapper;
	@Autowired
	GroupService groupService;
	@Autowired
	private GroupNoticeService groupNoticeService;

	@RequestMapping("/summerUpload")
	@ResponseBody
	public String summerUpload(MultipartFile file, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 파일이름 가져오기
		String newFileName = "";

		// 업로드할 폴더 경로
		String realFolder = "c:/team1FileSave/";// 저장될 외부 파일 경로 //c:/team1FileSave/

		// 업로드할 파일 이름
		String originFileName = file.getOriginalFilename();
		System.out.println("originFileName : " + originFileName);
		long time = System.currentTimeMillis();
		// 1개의 파일이름을 변형해서 다시 저장
		newFileName = String.format("%d_%s", time, originFileName);

		System.out.println("원본 파일명 : " + originFileName);
		System.out.println("저장할 파일명 : " + newFileName);

		String filepath = realFolder + "/" + newFileName;
		System.out.println("파일경로 : " + filepath);

		File f = new File(filepath);
		file.transferTo(f);
		System.out.println("/upload/" + newFileName);

		return "/upload/" + newFileName;
	}

	public String fileSave(MultipartFile file) {

		String newFileName = "";

		if (file.getSize() != 0) {

			String originFileName = file.getOriginalFilename();
			long time = System.currentTimeMillis(); // 01241514545512
			// 중복방지 파일이름생성
			newFileName = String.format("%d_%s", time, originFileName);
			// 파일 저장 위치
			String fileSaveUrl = "c:/team1FileSave/";
			// 파일생성 c:/fileSave/1.jpg
			File f = new File(fileSaveUrl + newFileName);
			// 파일 업로드
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return newFileName;
	}

	// 앨범 페이지로
	@GetMapping("/group/groupAlbum")
	public String mainAlbumView( HttpSession session,CrewInfoVIewVO cVo,GroupInfoVO groupInfoVO, Model model, AlbumVO albumVO,Criteria cri) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

		if (user == null) {
			return "/alerts/mustLoginAlert";
		} else {
			
			//해당모임에 가입하지 않은 사람은 해당 게시물에 접근할 수 없음
			List<CrewInfoVIewVO> crew = groupNoticeService.getCrewList(groupInfoVO.getGroup_seq(), user.getUser_id());
			System.out.println("-------" + crew.toString() + "---------");
			if(crew.isEmpty()) {
				return "/alerts/mustJoinAlert";		
			} else {
				
			List<CrewInfoVIewVO> crewList = groupService.getGroupCrews(groupInfoVO.getGroup_seq());
			model.addAttribute("crewList", crewList);	
			
			GroupInfoVO group = groupService.getGroupDetail(groupInfoVO.getGroup_seq());
			model.addAttribute("group", group);

			List<AlbumVO> albumList = albumService.getAlbumListPaging(cri);

			model.addAttribute("albumList", albumList);
			
			HashMap<String, Object> map = new HashMap<String, Object> ();
			
			map.put("cri", cri);
			map.put("group_seq", groupInfoVO.getGroup_seq());
			
			int totals = albumService.getAlbumTotal(map);

			PageMakerDTO pageMaker = new PageMakerDTO(cri, totals);

			model.addAttribute("pageMaker", pageMaker);
			
			System.out.println(albumList);
			}
		}
		return "/group/groupAlbum";
	}

	// 등록페이지로 이동
	@GetMapping("/groupAlbumForm")
	public String AlbumAddForm(HttpSession session, AlbumVO albumVO) {

		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

		if (user == null) {
			return "user/login";
		} else {

			System.out.println(albumVO);
			return "/group/groupAlbumForm";
		}
	}

	// 사진 등록
	@RequestMapping("/album_insert")
	public String albumInsert(AlbumVO albumVO, @RequestPart MultipartFile file1, Model model) {
		// 파일이름 Vo 저장
		albumVO.setFilename(fileSave(file1));

		albumService.InsertAlbum(albumVO);
		System.out.println(albumVO);
		return "/group/groupAlbum";
	}

	// 앨범 댓글창으로 이동하기
	@RequestMapping("/group/albumDetail")
	public String albumDetailView(AlbumVO albumVO, Model model) {

		AlbumVO albumInfo = albumService.albumDetail(albumVO.getGroup_album_seq());

		model.addAttribute("albumInfo", albumInfo);

		System.out.println(albumInfo);

		return "/group/groupAlbumDetail";

	}

	//앨범 삭제하기
	@RequestMapping("/albumdelete")
	public String deleteAlbum(HttpSession session, AlbumVO albumVO,@RequestParam("group_album_seq")int album_group_seq) {
		UserInfoVO user = (UserInfoVO) session.getAttribute("user");

		if (user == null) {
			return "user/login";
		} else {
			albumService.deleteAlbum(album_group_seq);
			return "redirect:/group/gorupAlbum";
		}
	}
}
