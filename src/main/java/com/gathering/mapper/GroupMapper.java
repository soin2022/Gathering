package com.gathering.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gathering.dto.CrewVO;
import com.gathering.dto.GroupInfoVO;
import com.gathering.paging.Criteria;

@Mapper
public interface GroupMapper {

	// 모임명 중복체크할때
	public GroupInfoVO getGroupByGroupName(GroupInfoVO vo);
	
	// 새로운 모임생성
	public void createNewGroup(GroupInfoVO vo);
	public void insertCrewLeader(CrewVO vo);
	
	//모임 리스트 (페이징)
	public List<GroupInfoVO> getGroupListPaging(Criteria cri);
		
	//모임리스트 총 갯수
	public int getTotalCount(Criteria cri);
	
}
