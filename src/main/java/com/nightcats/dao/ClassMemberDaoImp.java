package com.nightcats.dao;

import com.nightcats.data.ClassMember;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("classMemberDao")
public class ClassMemberDaoImp implements ClassMemberDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(ClassMember classMember) {
        sessionFactory.getCurrentSession().save(classMember);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        ClassMember classMember = session.get(ClassMember.class,id);
        session.delete(classMember);
    }

    @Override
    public void update(ClassMember classMember) {
        sessionFactory.getCurrentSession().update(classMember);
    }

    @Override
    public List<ClassMember> findByClass(int classId) {
        return sessionFactory.getCurrentSession().createQuery("from ClassMember where classId = ?").setParameter(0,classId).list();
    }

    @Override
    public List<ClassMember> findByUser(int userId) {
        return sessionFactory.getCurrentSession().createQuery("from ClassMember where userId = ?").setParameter(0,userId).list();
    }

    @Override
    public List<ClassMember> findByQuery(String query) {
        return sessionFactory.getCurrentSession().createQuery(query).list();
    }
}
