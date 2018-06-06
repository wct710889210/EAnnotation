package com.nightcats.dao;

import com.nightcats.data.Dianzan;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("dianzanDao")
public class DianzanDaoImp implements DianzanDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Dianzan dianzan) {
        sessionFactory.getCurrentSession().save(dianzan);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Dianzan.class,id));
    }

    @Override
    public void update(Dianzan dianzan) {
        sessionFactory.getCurrentSession().update(dianzan);
    }

    @Override
    public List<Dianzan> findListByQuery(String query) {
        return sessionFactory.getCurrentSession().createQuery(query).list();
    }

    @Override
    public long getCountByQuery(String query) {
        return (long)sessionFactory.getCurrentSession().createQuery(query).uniqueResult();
    }

    @Override
    public Dianzan getByQuery(String query) {
        return (Dianzan) sessionFactory.getCurrentSession().createQuery(query).uniqueResult();
    }
}
