package com.nightcats.dao;

import com.nightcats.data.Homework;

import java.util.List;

public interface HomeworkDao {
    public void add(Homework homework);
    public void delete(int id);
    public void update(Homework homework);
    public List<Homework> findByStudent(int studentId);
}
