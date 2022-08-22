package com.gathering.service;

import java.util.List;

import com.gathering.dto.CrewInfoVIewVO;
import com.gathering.dto.CrewVO;
import com.gathering.dto.GroupInfoVO;
import com.gathering.paging.Criteria;

public interface GroupService {

   public GroupInfoVO getGroupByGroupName(GroupInfoVO vo);
   
   public void createNewGroup(GroupInfoVO vo);
   public void insertCrewLeader(CrewVO vo);
   
   public GroupInfoVO getGroupDetail(int group_seq);
   public List<CrewInfoVIewVO> getGroupCrews(int group_seq);
   
   public List<GroupInfoVO> getGroupListPaging(Criteria cri);
   
   public int getTotalCount(Criteria cri);
}