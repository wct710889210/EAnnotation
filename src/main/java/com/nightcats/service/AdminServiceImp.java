package com.nightcats.service;

import com.nightcats.dao.AgeQuantityDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminService")
public class AdminServiceImp implements AdminService{
    @Autowired
    private AgeQuantityDao ageQuantityDao;

    @Override
    public void add(int age, int count) {
        this.ageQuantityDao.insert(age,count);
    }
}
