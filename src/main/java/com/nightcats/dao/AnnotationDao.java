package com.nightcats.dao;

import com.nightcats.data.Annotation;

import java.util.List;

public interface AnnotationDao {
    public void add(Annotation annotation);
    public void delete(int id);
    public void update(Annotation annotation);
    public Annotation findById(int id);
    //通过用户id和文章id获取所有批注
    public List<Annotation> findAnnsBy2Id(int userId, int passageId);
}
