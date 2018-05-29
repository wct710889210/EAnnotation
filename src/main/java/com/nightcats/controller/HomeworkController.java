package com.nightcats.controller;

import com.nightcats.dao.AnnotationDao;
import com.nightcats.dao.HomeworkDao;
import com.nightcats.dao.PassageDao;
import com.nightcats.data.Annotation;
import com.nightcats.data.Homework;
import com.nightcats.data.Passage;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class HomeworkController {

    @Autowired
    private AnnotationDao annotationDao;

    @Autowired
    private PassageDao passageDao;

    @Autowired
    private HomeworkDao homeworkDao;

    @RequestMapping(value = "/getAllHomework",produces="text/json;charset=utf-8")
    @ResponseBody
    public String getAllHomework(int studentId,int classId){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        List<Homework> homeworks = homeworkDao.findAllHomework(studentId,classId);
        JSONArray jsonArray = new JSONArray();
        for(Homework homework:homeworks){
            System.out.printf("id:"+homework.getId());
            JSONObject obj = new JSONObject();
            obj.put("id",homework.getId());
            obj.put("studentId",homework.getStudentId());
            obj.put("teacherId",homework.getTeacherId());
            obj.put("passageId",homework.getPassageId());
            obj.put("classId",homework.getClassId());
            obj.put("finish",homework.isFinish());
            obj.put("score",homework.getScore());
            if(homework.getRemark() != null){
                obj.put("remark",homework.getRemark());
            }else{
                obj.put("remark","");
            }
            Passage passage = passageDao.findById(homework.getPassageId());
            obj.put("passageTitle",passage.getTitle());
            obj.put("passageContent",passage.getContent());
            if(passage.getTheme()!=null){
                obj.put("passageTheme",passage.getTheme());
            }else{
                obj.put("passageTheme","");
            }
            obj.put("endTime",passage.getEndTime().toString());
            obj.put("releaseTime",format.format(passage.getReleaseTime()));
            jsonArray.add(obj);
        }
        return jsonArray.toString();
    }

    @RequestMapping(value="/getStudentHomework",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getStudentHomework(int teacherId){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        List<Passage> passages = passageDao.findHomeByTeach(teacherId);
        JSONArray jsonArray = new JSONArray();
        for(Passage passage:passages){
            JSONObject json = new JSONObject();
            json.put("id",passage.getId());
            json.put("title",passage.getTitle());
            json.put("content",passage.getContent());
            json.put("auth",passage.getAuth());
            json.put("releaseTime",format.format(passage.getReleaseTime()));
            json.put("classId",passage.getClassId());
            json.put("type",passage.getType());
            json.put("teacherId",passage.getReleaseId());
            if(passage.getEndTime() != null){
                json.put("endTime",passage.getEndTime().toString());
            }else{
                json.put("endTime","");
            }
            if(passage.getPhoto() != null){
                json.put("photo",passage.getPhoto());
            }else{
                json.put("photo","");
            }
            if(passage.getTheme() != null){
                json.put("theme",passage.getTheme());
            }else{
                json.put("theme","");
            }
            jsonArray.add(json);
        }
        return jsonArray.toString();
    }

    @RequestMapping("/setFinish")
    @ResponseBody
    public String setFinish(int studentId){

        return "success";
    }

    @RequestMapping(value = "/getHistory",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getHistory(int userId){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        JSONArray array = new JSONArray();
        List<Annotation> annotations = annotationDao.findAnnsById(userId);
        for(Annotation annotation:annotations){
            //System.out.printf(annotation.getPassageId()+"\n");
            Passage passage = passageDao.findById(annotation.getPassageId());
            JSONObject json = new JSONObject();
            json.put("id",passage.getId());
            json.put("title",passage.getTitle());
            json.put("content",passage.getContent());
            json.put("auth",passage.getAuth());
            json.put("releaseTime",format.format(passage.getReleaseTime().getTime()));
            json.put("classId",passage.getClassId());
            json.put("type",passage.getType());
            json.put("teacherId",passage.getReleaseId());
            if(passage.getEndTime() != null){
                json.put("endTime",passage.getEndTime().toString());
            }else{
                json.put("endTime","");
            }
            if(passage.getPhoto() != null){
                json.put("photo",passage.getPhoto());
            }else{
                json.put("photo","");
            }
            if(passage.getTheme() != null){
                json.put("theme",passage.getTheme());
            }else{
                json.put("theme","");
            }
            array.add(json);
        }
        return array.toString();
    }
}
