package com.nightcats.dao;

import com.nightcats.data.User;

public interface UserDao {
    public User findUserByAccount(String account);
    public User findById(int id);
}
