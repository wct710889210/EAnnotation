package com.nightcats.dao;

import com.nightcats.data.Annotation;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("annotationDao")
public class AnnotationDaoImp implements AnnotationDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Annotation annotation) {
        sessionFactory.getCurrentSession().save(annotation);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Annotation.class,id));
    }

    @Override
    public void update(Annotation annotation) {
        sessionFactory.getCurrentSession().update(annotation);
    }

    @Override
    public Annotation findById(int id) {
        return sessionFactory.getCurrentSession().get(Annotation.class,id);
    }

    @Override
    public List<Annotation> findAnnsBy2Id(int userId, int passageId) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Annotation where userId=? AND passageId=? order by paragraph,start").setParameter(0,userId).setParameter(1,passageId).list();
    }
}
