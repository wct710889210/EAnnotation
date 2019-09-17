package com.nightcats.dao;

import com.nightcats.data.ClassMember;

import java.util.List;

public interface ClassMemberDao {
    public void add(ClassMember classMember);
    public void delete(int id);
    public void update(ClassMember classMember);
    public List<ClassMember> findByClass(int classId);
    public List<ClassMember> findByUser(int userId);
    public List<ClassMember> findByQuery(String query);
}
