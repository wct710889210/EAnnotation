package com.nightcats.dao;

import com.mysql.cj.jdbc.interceptors.SessionAssociationInterceptor;
import com.nightcats.data.AgeQuantity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ageQuantityDao")
public class AgeQuantityDaoImp implements AgeQuantityDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(int age, int count) {
        AgeQuantity ageQuantity = new AgeQuantity();
        ageQuantity.setAge(age);
        ageQuantity.setCount(count);
        ageQuantity.setId(1);
        Session session = sessionFactory.getCurrentSession();
        session.save(ageQuantity);
    }
}
