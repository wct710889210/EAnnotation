package com.nightcats.service;

import com.nightcats.dao.AnnotationDao;
import com.nightcats.dao.HomeworkDao;
import com.nightcats.dao.PassageDao;
import com.nightcats.data.Annotation;
import com.nightcats.data.Homework;
import com.nightcats.data.Passage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.Random;

@Service("frontService")
public class FrontServiceImp implements FrontService{
    @Autowired
    private AnnotationDao annotationDao;
    @Autowired
    private PassageDao passageDao;
    @Autowired
    private HomeworkDao homeworkDao;

    @Override
    public void addAnnotation(int userId, int passageId, int start, int end, String content,int type, String selected, int paragraph) {
        Annotation annotation = new Annotation();
        annotation.setUserId(userId);
        annotation.setPassageId(passageId);
        annotation.setStart(start);
        annotation.setEnd(end);
        annotation.setContent(content);
        annotation.setType(type);
        annotation.setSelected(selected);
        annotation.setParagraph(paragraph);
        annotationDao.add(annotation);
    }

    @Override
    public void updateAnnotation(int id, int userID, int passageId, int start, int end, String content, int type, String selected, int paragraph) {
        Annotation annotation = new Annotation();
        annotation.setId(id);
        annotation.setUserId(userID);
        annotation.setPassageId(passageId);
        annotation.setStart(start);
        annotation.setEnd(end);
        annotation.setContent(content);
        annotation.setType(type);
        annotation.setSelected(selected);
        annotation.setParagraph(paragraph);
        annotationDao.update(annotation);
    }

    @Override
    public void addPassage(String title, String content, String photo, Date releaseTime, Date endTime, String theme, String auth, int classId, int type,int teacherId) {
        Passage passage = new Passage();
        passage.setTitle(title);
        passage.setContent(content);
        passage.setPhoto(photo);
        passage.setReleaseTime(releaseTime);
        passage.setEndTime(endTime);
        passage.setTheme(theme);
        passage.setAuth(auth);
        passage.setClassId(classId);
        passage.setType(type);
        passage.setReleaseId(teacherId);
        passageDao.add(passage);
    }

    @Override
    public String generateRandomFilename() {
        String RandomFilename = "";
        Random rand = new Random();//生成随机数
        int random = rand.nextInt();
        Calendar calCurrent = Calendar.getInstance();
        int intDay = calCurrent.get(Calendar.DATE);
        int intMonth = calCurrent.get(Calendar.MONTH) + 1;
        int intYear = calCurrent.get(Calendar.YEAR);
        String now = String.valueOf(intYear) + "_" + String.valueOf(intMonth) + "_" +
                String.valueOf(intDay) + "_";
        RandomFilename = now + String.valueOf(random > 0 ? random : ( -1) * random) + ".";
        return RandomFilename;
    }

    @Override
    public void setFinish(int studentId) {

    }
}
