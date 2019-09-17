package com.nightcats.dao;

import com.nightcats.data.Excellent;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("excellentDao")
public class ExcellentDaoImp implements ExcellentDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Excellent excellent) {
        sessionFactory.getCurrentSession().save(excellent);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Excellent.class,id));
    }

    @Override
    public void update(Excellent excellent) {
        sessionFactory.getCurrentSession().update(excellent);
    }

    @Override
    public List<Excellent> findByClassId(int id) {
        return sessionFactory.getCurrentSession().createQuery("from Excellent where classId = ?").setParameter(0,id).list();
    }
}
