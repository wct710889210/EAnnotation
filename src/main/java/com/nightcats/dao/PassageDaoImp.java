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
        return sessionFactory.getCurrentSession().createQuery("From Passage where type is null and groupId is null").list();
    }

    @Override
    public List<Passage> findHomeByTeach(int teacherId,int classId) {
        return sessionFactory.getCurrentSession().createQuery("from Passage where releaseId=? and classId=? and type=0").setParameter(0,teacherId).setParameter(1,classId).list();
    }

    @Override
    public int getMax() {
        if(sessionFactory.getCurrentSession().createQuery("select max(id) from Passage").uniqueResult()!=null){
            return (int)sessionFactory.getCurrentSession().createQuery("select max(id) from Passage").uniqueResult();
        }else{
            return 0;
        }
    }

    @Override
    public List<Passage> findClassHandouts(int classId) {
        return sessionFactory.getCurrentSession().createQuery("from Passage where classId = ? and type = 1 order by releaseTime desc ").setParameter(0,classId).list();
    }

    @Override
    public List<Passage> findListByQuery(String query) {
        return sessionFactory.getCurrentSession().createQuery(query).list();
    }
}
