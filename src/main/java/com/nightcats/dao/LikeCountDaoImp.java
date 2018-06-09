package com.nightcats.dao;

import com.nightcats.data.LikeCount;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LikeCountDaoImp implements LikeCountDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<LikeCount> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from LikeCount order by num desc ").list();
    }
}
