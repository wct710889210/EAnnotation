package com.nightcats.dao;

import com.nightcats.data.Group;

import java.util.List;

public interface GroupDao {
    public void add(Group group);
    public void delete(int id);
    public void update(Group group);
    public Group findById(int id);
    public List<Group> findListByQuery(String query);
    public int getMax();
}
