package com.nightcats.dao;

import com.nightcats.data.GroupMember;

import java.util.List;

public interface GroupMemberDao {
    public void add(GroupMember groupMember);
    public void delete(int id);
    public void update(GroupMember groupMember);
    public List<GroupMember> findByGroup(int groupId);
    public List<GroupMember> findByUser(int userId);
}
