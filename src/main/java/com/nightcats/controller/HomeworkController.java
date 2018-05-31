package com.nightcats.controller;

import com.nightcats.dao.AnnotationDao;
import com.nightcats.dao.ExcellentDao;
import com.nightcats.dao.HomeworkDao;
import com.nightcats.dao.PassageDao;
import com.nightcats.data.Annotation;
import com.nightcats.data.Excellent;
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
    private PassageDao passageDao;

    @Autowired
    private HomeworkDao homeworkDao;

    @Autowired
    private ExcellentDao excellentDao;

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
    public String setFinish(int studentId,int classId,int passageId){
        Homework homework = homeworkDao.findByQuery("from Homework where studentId = "+studentId+" and classId = "+classId+" and passageId = "+passageId);
        homework.setFinish(true);
        homeworkDao.update(homework);
        return "success";
    }

    @RequestMapping(value = "/getFinishedHome",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getFinishedHome(int id){
        Homework homework =homeworkDao.findByQuery("from Homework where id = "+id);
        return JSONObject.fromObject(homework).toString();
    }

    @RequestMapping(value = "/getExcellent",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getExcellent(int classId){
        JSONArray array = new JSONArray();
        List<Excellent> excellents = excellentDao.findByClassId(classId);
        for(Excellent excellent:excellents){
            JSONObject obj = new JSONObject();
            obj.put("id",excellent.getId());
            obj.put("classId",excellent.getClassId());
            obj.put("userId",excellent.getUserId());
            int passageId = excellent.getPassageId();
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
        JSONArray array = JSONArray.fromObject(homeworkDao.findListByQuery("from Homework where passageId = "+passageId+" and classId = "+classId+" and teacherId = "+teacherId));
        return array.toString();
    }

    //
    @RequestMapping(value = "/setScore",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String setScore(int passageId,int classId,int studentId,String score,String remark){
        Homework homework = homeworkDao.findByQuery("from Homework where passageId = "+passageId+" and classId = "+classId+" and studentId = "+studentId);
        homework.setScore(score);
        homework.setRemark(remark);
        System.out.print("updating\n");
        homeworkDao.update(homework);
        return "success";
    }
}
