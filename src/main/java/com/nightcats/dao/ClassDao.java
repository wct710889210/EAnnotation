package com.nightcats.dao;

import com.nightcats.data.Class;

import java.util.List;

public interface ClassDao {
    public void add(Class myClass);
    public void delete(int id);
    public void update(Class myClass);
    public Class findById(int id);
    public List<Class> findListByQuery(String query);
}
