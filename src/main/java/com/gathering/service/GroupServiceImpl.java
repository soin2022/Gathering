package com.gathering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gathering.dto.CrewVO;
import com.gathering.dto.GroupInfoVO;
import com.gathering.mapper.GroupMapper;
import com.gathering.paging.Criteria;

@Service
public class GroupServiceImpl implements GroupService {

	@Autowired
	private GroupMapper groupMapper;
	
	@Override
	public GroupInfoVO getGroupByGroupName(GroupInfoVO vo) {
		GroupInfoVO group = groupMapper.getGroupByGroupName(vo);
		return group;
	}

	@Override
	public void createNewGroup(GroupInfoVO vo) {
		groupMapper.createNewGroup(vo);
	}
	@Override
	public void insertCrewLeader(CrewVO vo) {
		groupMapper.insertCrewLeader(vo);
	}

	@Override
	public List<GroupInfoVO> getGroupListPaging(Criteria cri) {
		return groupMapper.getGroupListPaging(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return groupMapper.getTotalCount(cri);
	}


}
