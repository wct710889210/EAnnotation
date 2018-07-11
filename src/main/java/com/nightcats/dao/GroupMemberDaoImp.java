package com.nightcats.dao;

import com.nightcats.data.GroupMember;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("groupMemberDao")
public class GroupMemberDaoImp implements GroupMemberDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(GroupMember groupMember) {
        sessionFactory.getCurrentSession().save(groupMember);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        GroupMember groupMember = session.get(GroupMember.class,id);
        session.delete(groupMember);
    }

    @Override
    public void update(GroupMember groupMember) {
        sessionFactory.getCurrentSession().update(groupMember);
    }

    @Override
    public List<GroupMember> findByGroup(int classId) {
        return sessionFactory.getCurrentSession().createQuery("from GroupMember where groupId = ?").setParameter(0,classId).list();
    }

    @Override
    public List<GroupMember> findByUser(int userId) {
        return sessionFactory.getCurrentSession().createQuery("from GroupMember where userId = ?").setParameter(0,userId).list();
    }
}
