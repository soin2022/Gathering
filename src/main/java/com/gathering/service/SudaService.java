package com.gathering.service;

import java.util.HashMap;
import java.util.List;

import com.gathering.dto.QnaVO;
import com.gathering.dto.SudaVO;
import com.gathering.paging.Criteria;

public interface SudaService {

	// 수다List 출력
	List<SudaVO> getSudaList(SudaVO sudaVO);

	// 수다 글쓰기
	public void insertSuda(SudaVO sudaVO);

	// 수다 상세보기
	public SudaVO getSudaView(int suda_seq);
	
	// 수다 삭제하기 
	public void deleteSuda(int suda_seq);


	// 수다 목록(페이징 적용)
	public List<SudaVO> getListSudaPaging(Criteria cri);

	// 수다글 총 갯수
	public int getSudaTotal(HashMap<String, Object> map);
}