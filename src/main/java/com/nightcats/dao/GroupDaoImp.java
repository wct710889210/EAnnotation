package com.nightcats.dao;

import com.nightcats.data.Group;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository("groupDao")
public class GroupDaoImp implements GroupDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Group group) {
        sessionFactory.getCurrentSession().save(group);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Group group = session.get(Group.class,id);
        session.delete(group);
    }

    @Override
    public void update(Group group) {
        sessionFactory.getCurrentSession().update(group);
    }

    @Override
    public Group findById(int id) {
        return (Group) sessionFactory.getCurrentSession().createQuery("from Group where id=?").setParameter(0,id).uniqueResult();
    }

    @Override
    public List<Group> findListByQuery(String query) {
        return sessionFactory.getCurrentSession().createQuery(query).list();
    }

    @Override
    public int getMax() {
        if(sessionFactory.getCurrentSession().createQuery("select max(id) from Group").uniqueResult()!=null){
            return (int)sessionFactory.getCurrentSession().createQuery("select max(id) from Group").uniqueResult();
        }else{
            return 0;
        }

    }
}
