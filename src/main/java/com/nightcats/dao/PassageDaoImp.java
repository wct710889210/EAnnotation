package com.nightcats.dao;

import com.nightcats.data.Passage;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("passageDao")
public class PassageDaoImp implements PassageDao{
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void add(Passage passage) {
        sessionFactory.getCurrentSession().save(passage);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Passage.class,id));
    }

    @Override
    public void update(Passage passage) {
        sessionFactory.getCurrentSession().update(passage);
    }

    @Override
    public Passage findById(int id) {
        return sessionFactory.getCurrentSession().get(Passage.class,id);
    }

    @Override
    public List<Passage> findAll() {
        return sessionFactory.getCurrentSession().createQuery("From Passage").list();
    }

    @Override
    public List<Passage> findHomeByTeach(int teacherId) {
        return sessionFactory.getCurrentSession().createQuery("from Passage where teacherId=? and type=0").setParameter(0,teacherId).list();
    }
}
