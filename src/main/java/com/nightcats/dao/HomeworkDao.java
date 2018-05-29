package com.nightcats.dao;

import com.nightcats.data.Homework;

import java.util.List;

public interface HomeworkDao {
    public void add(Homework homework);
    public void delete(int id);
    public void update(Homework homework);
    public List<Homework> findByStudent(int studentId);
    public List<Homework> findAllHomework(int studentId,int classId);    //获取指定班级指定学生的所有作业
}
