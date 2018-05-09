package com.nightcats.service;

import com.nightcats.data.Annotation;

import java.util.List;

public interface FrontService {
    public void addAnnotation(int userID,int passageId,int start,int end,String content,int type,String selected,int paragraph);

}
