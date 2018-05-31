package com.nightcats.dao;

import com.nightcats.data.Homework;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("homeworkDao")
public class HomeworkDaoImp implements HomeworkDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Homework homework) {
        sessionFactory.getCurrentSession().save(homework);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Homework.class,id));
    }

    @Override
    public void update(Homework homework) {
        sessionFactory.getCurrentSession().update(homework);
    }

    @Override
    public List<Homework> findByStudent(int studentId) {
        return sessionFactory.getCurrentSession().createQuery("from Homework where studentId = ?").setParameter(0,studentId).list();
    }

    @Override
    public List<Homework> findAllHomework(int studentId, int classId) {
        return sessionFactory.getCurrentSession().createQuery("from Homework where studentId = ? and classId = ?").setParameter(0,studentId).setParameter(1,classId).list();
    }

    @Override
    public Homework findByQuery(String query) {
        return (Homework) sessionFactory.getCurrentSession().createQuery(query).uniqueResult();
    }

    @Override
    public List<Homework> findListByQuery(String query) {
        return sessionFactory.getCurrentSession().createQuery(query).list();
    }

}
