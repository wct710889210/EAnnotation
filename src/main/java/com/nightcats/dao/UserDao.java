package com.nightcats.dao;

import com.nightcats.data.User;

import java.util.List;

public interface UserDao {
    public User findUserByAccount(String account);
    public User findById(int id);
    public List<User> findStusByTech(int teacherId);
}
