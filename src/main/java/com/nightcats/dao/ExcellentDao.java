package com.nightcats.dao;

import com.nightcats.data.Excellent;

import java.util.List;

public interface ExcellentDao {
    public void add(Excellent excellent);
    public void delete(int id);
    public void update(Excellent excellent);
    public List<Excellent> findByClassId(int id);
}
