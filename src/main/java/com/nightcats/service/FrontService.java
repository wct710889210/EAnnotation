package com.nightcats.service;

import java.util.Date;

public interface FrontService {
    //批注
    public void addAnnotation(int userId,int passageId,int start,int end,String content,int type,String selected,int paragraph);
    public void updateAnnotation(int id,int userID,int passageId,int start,int end,String content,int type,String selected,int paragraph);

    //文章
    public void addPassage(String title, String content, String photo,Date releaseTime, Date endTime, String theme, String auth, int classId, int type);
}
