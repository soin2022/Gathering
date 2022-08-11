package com.gathering.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gathering.dto.NoticeVO;
import com.gathering.service.NoticeService;
import com.gathering.util.Criteria;
import com.gathering.util.PageMakerDTO;

@Controller
@SessionAttributes("user")
public class NoticeController {
	
	
	// private final Logger logger = LoggerFactory.getLogger("NoticeController 의 로그");

	@Autowired
	NoticeService noticeService;

	// 게시글 목록 + 페이지 적용
	@RequestMapping(value = "/notice/noticeList", method = RequestMethod.GET)
	public String list(Criteria cri, Model model) {

		List<NoticeVO> noticeList = noticeService.getListPaging(cri);
		model.addAttribute("noticeList", noticeList);

		int total = noticeService.getTotal(cri);

		PageMakerDTO pageMaker = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMaker);

		return "/notice/noticeList";
	}
	
	// 공지 등록폼 이동
	@RequestMapping("/notice/noticeForm")
	public String noticeCreate(NoticeVO noticeVO, Model model) {

		return "/notice/noticeForm";

	}
	
	
	
	// 공지 등록하기
	
	@RequestMapping("/insertNotice")
	public String noticeInsert( NoticeVO noticeVO) {
			
		
		
		noticeService.InsertNotice(noticeVO);
		return "redirect:notice/noticeList";
	}

	// 공지 상세보기
	@RequestMapping(value = "/notice/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(@RequestParam("notice_seq") int notice_seq, Model model, Criteria cri) {

		NoticeVO noticeInfo = noticeService.getNotice(notice_seq);

		model.addAttribute("noticeInfo", noticeInfo);
		model.addAttribute("cri", cri);
		System.out.println("값확인" + cri.getPageNum());

		return "/notice/noticeDetail";
	}

	// 공지 수정이동
	@RequestMapping(value = "/notice/noticeUpdate", method = RequestMethod.GET)
	public String update(@ModelAttribute("searchVO") NoticeVO searchVO, @RequestParam("notice_seq") int notice_seq,
			Model model) {

		NoticeVO noticeInfo = noticeService.getNotice(notice_seq);
		model.addAttribute("noticeInfo", noticeInfo);
		model.addAttribute("cri", searchVO);
		System.out.println("title 값 확인" + noticeInfo.getTitle());
		System.out.println("content 값 확인" + noticeInfo.getContent());

		return "/notice/noticeUpdate";
	}

	// 공지 수정
	@RequestMapping(value = "/notice/update_action", method = RequestMethod.POST)
	public String update_action(@ModelAttribute("searchVO") NoticeVO searchVO, HttpServletRequest request,
			RedirectAttributes redirect, Model model) {

		noticeService.updateNotice(searchVO);
		redirect.addFlashAttribute("result", "modify sucess");
		System.out.println("내용값 확인" + searchVO.getContent());

		return "redirect:/notice/noticeDetail?notice_seq=" + searchVO.getNotice_seq();
	}

	// 공지삭제
	@RequestMapping(value = "/notice/delete", method = RequestMethod.GET)
	public String delete(@ModelAttribute("searchVO") NoticeVO searchVO, @RequestParam("notice_seq") int notice_seq,
			RedirectAttributes redirect, Model model) {

		try {

			noticeService.deleteNotice(notice_seq);
			redirect.addFlashAttribute("msg", "삭제가 완료되었습니다.");

		} catch (Exception e) {
			redirect.addFlashAttribute("msg", "오류가 발생되었습니다.");

		}

		return "redirect:/notice/noticeList";
	}
	
	
	
}
