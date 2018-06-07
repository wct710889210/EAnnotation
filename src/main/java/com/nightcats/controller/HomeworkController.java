package com.nightcats.controller;

import com.nightcats.dao.*;
import com.nightcats.data.*;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

@Controller
public class HomeworkController {

    @Autowired
    private PassageDao passageDao;

    @Autowired
    private HomeworkDao homeworkDao;

    @Autowired
    private ExcellentDao excellentDao;

    @Autowired
    private UserDao userDao;

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
            if(homework.getScore()!=null) {
                obj.put("score",homework.getScore());
            }else{
                obj.put("score","未批改");
            }
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
    public String getStudentHomework(int teacherId,int classId){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        List<Passage> passages = passageDao.findHomeByTeach(teacherId,classId);
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
    public String setFinish(int studentId,int classId,int passageId){
        Homework homework = homeworkDao.findByQuery("from Homework where studentId = "+studentId+" and classId = "+classId+" and passageId = "+passageId);
        homework.setFinish(true);
        homework.setFinishTime(new Date());
        homeworkDao.update(homework);
        return "success";
    }

    @RequestMapping(value = "/getFinishedHome",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getFinishedHome(int id){
        Homework homework =homeworkDao.findByQuery("from Homework where id = "+id);
        JSONObject obj = new JSONObject();
        obj.put("id",homework.getId());
        obj.put("classId",homework.getClassId());
        obj.put("teacherId",homework.getTeacherId());
        obj.put("studentId",homework.getStudentId());
        obj.put("passageId",homework.getPassageId());
        if(homework.getScore() == null){
            obj.put("score","");
        }else{
            obj.put("score",homework.getScore());
        }
        if(homework.getRemark() == null){
            obj.put("remark","");
        }else{
            obj.put("remark",homework.getRemark());
        }
        obj.put("finish",homework.isFinish());
        return obj.toString();
    }

    @RequestMapping(value = "/getExcellent",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getExcellent(int classId){
        JSONArray array = new JSONArray();
        List<Homework> homeworks = homeworkDao.findListByQuery("from Homework where classId = "+classId+" and score = 'A+'");
        for(Homework homework:homeworks){
            JSONObject obj = new JSONObject();
            obj.put("id",homework.getId());
            obj.put("classId",homework.getClassId());
            obj.put("userId",homework.getStudentId());
            User user = userDao.findById(homework.getStudentId());
            obj.put("userName",user.getAccount());
            int passageId = homework.getPassageId();
            obj.put("passageId",passageId);
            Passage passage = passageDao.findById(passageId);
            obj.put("theme",passage.getTheme());
            obj.put("title",passage.getTitle());
            obj.put("content",passage.getContent());
            array.add(obj);
        }
        return array.toString();
    }

    //教师获取一次作业的学生完成情况
    @RequestMapping(value = "/getFinishList",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getFinishList(int passageId,int classId,int teacherId){
        JSONArray array = new JSONArray();
        List<Homework> homeworks = homeworkDao.findListByQuery("from Homework where passageId = "+passageId+" and classId = "+classId+" and teacherId = "+teacherId);
        for(Homework homework:homeworks){
            JSONObject obj = new JSONObject();
            obj.put("id",homework.getId());
            obj.put("classId",homework.getClassId());
            obj.put("teacherId",homework.getTeacherId());
            obj.put("studentId",homework.getStudentId());
            obj.put("passageId",homework.getPassageId());
            if(homework.getScore() == null){
                obj.put("score","");
            }else{
                obj.put("score",homework.getScore());
            }
            if(homework.getRemark() == null){
                obj.put("remark","");
            }else{
                obj.put("remark",homework.getRemark());
            }
            obj.put("finish",homework.isFinish());
            User user = userDao.findById(homework.getStudentId());
            obj.put("studentName",user.getAccount());
            array.add(obj);
        }
        return array.toString();
    }

    //
    @RequestMapping(value = "/setScore",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String setScore(int passageId,int classId,int studentId,@RequestParam(value = "score",required = false)String score,@RequestParam(value = "remark",required = false) String remark){
        Homework homework = homeworkDao.findByQuery("from Homework where passageId = "+passageId+" and classId = "+classId+" and studentId = "+studentId);
        if(score.equals("A+，推荐为优秀作业")){
            score = "A+";
        }
        homework.setScore(score);
        homework.setRemark(remark);
        homeworkDao.update(homework);
        return "success";
    }

    @RequestMapping(value = "/getHomeById",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getHomeById(int id){
        Homework homework = homeworkDao.findByQuery("from Homework where id = "+id);
        JSONObject obj = new JSONObject();
        obj.put("id",homework.getId());
        obj.put("classId",homework.getClassId());
        obj.put("teacherId",homework.getTeacherId());
        obj.put("studentId",homework.getStudentId());
        obj.put("passageId",homework.getPassageId());
        obj.put("score",homework.getScore());
        obj.put("remark",homework.getRemark());
        obj.put("finish",homework.isFinish());
        return obj.toString();
    }

//    @RequestMapping(value = "/pushGood",produces = "text/json;charset=utf-8")
//    @ResponseBody
//    public String pushGood(int classId,int userId,int passageId){
//        Excellent excellent = new Excellent();
//        excellent.setClassId(classId);
//        excellent.setUserId(userId);
//        excellent.setPassageId(passageId);
//        excellentDao.add(excellent);
//        return "success";
//    }
}
