package com.nightcats.dao;

import com.nightcats.data.Class;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("classDao")
public class ClassDaoImp implements ClassDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Class myClass) {
        sessionFactory.getCurrentSession().save(myClass);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Class myClass = session.get(Class.class,id);
        session.delete(myClass);
    }

    @Override
    public void update(Class myClass) {
        sessionFactory.getCurrentSession().update(myClass);
    }

    @Override
    public Class findById(int id) {
        return (Class) sessionFactory.getCurrentSession().createQuery("from Class where id = ?").setParameter(0,id).uniqueResult();
    }

    @Override
    public List<Class> findListByQuery(String query) {
        return sessionFactory.getCurrentSession().createQuery(query).list();
    }

    @Override
    public int getMax() {
        if(sessionFactory.getCurrentSession().createQuery("select max(id) from Class").uniqueResult()!=null){
            return (int)sessionFactory.getCurrentSession().createQuery("select max(id) from Class").uniqueResult();
        }else{
            return 0;
        }
    }
}
