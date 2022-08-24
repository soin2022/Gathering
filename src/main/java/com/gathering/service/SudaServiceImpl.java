package com.gathering.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gathering.dto.QnaVO;
import com.gathering.dto.SudaVO;
import com.gathering.mapper.SudaMapper;
import com.gathering.paging.Criteria;

@Service
public class SudaServiceImpl implements SudaService {

	@Autowired
	SudaMapper sudaMapper;

	@Override
	public List<SudaVO> getSudaList(SudaVO sudaVO) {

		return sudaMapper.getSudaList(sudaVO);
	}

	@Override
	public void insertSuda(SudaVO sudaVO) {
		
		sudaMapper.insertSuda(sudaVO);
		
	}

	@Override
	public SudaVO getSudaView(int suda_seq) {
		
		return sudaMapper.getSudaView(suda_seq);
	}

	@Override
	public List<SudaVO> getListSudaPaging(Criteria cri) {
		
		return sudaMapper.getListSudaPaging(cri);
	}

	@Override
	public int getSudaTotal(HashMap<String, Object> map) {
		
		return sudaMapper.getSudaTotal(map);
	}

	@Override
	public void deleteSuda(int suda_seq) {
		
		sudaMapper.deleteSuda(suda_seq);
		
	}

	

	

}
