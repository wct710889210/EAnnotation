package com.nightcats.service;

import com.nightcats.dao.AnnotationDao;
import com.nightcats.data.Annotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("frontService")
public class FrontServiceImp implements FrontService{
    @Autowired
    private AnnotationDao annotationDao;

    @Override
    public void addAnnotation(int userID, int passageId, int start, int end, String content,int type, String selected, int paragraph) {
        Annotation annotation = new Annotation();
        annotation.setUserId(userID);
        annotation.setPassageId(passageId);
        annotation.setStart(start);
        annotation.setEnd(end);
        annotation.setContent(content);
        annotation.setType(type);
        annotation.setSelected(selected);
        annotation.setParagraph(paragraph);
        annotationDao.add(annotation);
    }
}
