package com.nightcats.dao;

import com.nightcats.data.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImp implements UserDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User findUserByAccount(String account) {
        return (User) sessionFactory.getCurrentSession().createQuery("from User where account=?").setParameter(0,account).uniqueResult();
    }

    @Override
    public User findById(int id) {
        return sessionFactory.getCurrentSession().get(User.class,id);
    }
}
