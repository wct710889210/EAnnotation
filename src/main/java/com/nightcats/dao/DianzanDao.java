package com.nightcats.dao;

import com.nightcats.data.Dianzan;

import java.util.List;

public interface DianzanDao {
    public void add(Dianzan dianzan);
    public void delete(int id);
    public void update(Dianzan dianzan);

    public List<Dianzan> findListByQuery(String query);
    public long getCountByQuery(String query);
    public Dianzan getByQuery(String query);
}
