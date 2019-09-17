package com.nightcats.controller;

import com.nightcats.dao.*;
import com.nightcats.data.*;
import com.nightcats.data.Class;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ClassController {
    @Autowired
    private ClassDao classDao;

    @Autowired
    private ClassMemberDao classMemberDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private HomeworkDao homeworkDao;

    @Autowired
    private PassageDao passageDao;

    private int classStart = 121245;

    @RequestMapping(value = "getAllClass",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getAllClass(int studentId){
        JSONArray array = new JSONArray();
        List<ClassMember> classMembers = classMemberDao.findByUser(studentId);
        for(ClassMember classMember:classMembers){
            Class myClass = classDao.findById(classMember.getClassId());
            User user = userDao.findById(myClass.getTeacherId());
            JSONObject obj = new JSONObject();
            obj.put("classId",classMember.getClassId());
            obj.put("className",myClass.getClassName());
            obj.put("teacher",user.getAccount());
            array.add(obj);
        }
        return array.toString();
    }

    @RequestMapping(value = "getAllClasses",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getAllClasses(){
        JSONArray array = new JSONArray();
        List<Class> classes = classDao.findListByQuery("from Class");
        for(Class myClass:classes){
            User user = userDao.findById(myClass.getTeacherId());
            JSONObject obj = new JSONObject();
            obj.put("classId", myClass.getId());
            obj.put("className",myClass.getClassName());
            obj.put("teacher",user.getAccount());
            array.add(obj);
        }
        return array.toString();
    }

    @RequestMapping(value = "/getAllClassByTech",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getAllClassByTech(int teacherId){
        String teacher = userDao.findById(teacherId).getAccount();
        JSONArray array = new JSONArray();
        for(Class myClass:classDao.findListByQuery("from Class where teacherId = "+teacherId)){
            JSONObject obj = new JSONObject();
            obj.put("classId",myClass.getId());
            obj.put("teacherId",myClass.getTeacherId());
            obj.put("className",myClass.getClassName());
            obj.put("teacherName",teacher);
            array.add(obj);
        }
        return array.toString();
    }

    @RequestMapping(value = "/techGetHomeList",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String techGetHomeList(int teacherId,int classId){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<Passage> passages = passageDao.findListByQuery("from Passage where classId = "+classId+" and type=0 order by releaseTime desc");
        JSONArray array = new JSONArray();
        for(Passage passage:passages){
            JSONObject json = new JSONObject();
            json.put("id",passage.getId());
            json.put("title",passage.getTitle());
            json.put("content",passage.getContent());
            json.put("auth",userDao.findById(passage.getReleaseId()).getAccount());
            json.put("releaseTime",format.format(passage.getReleaseTime().getTime()));
            json.put("classId",passage.getClassId());
            json.put("type",passage.getType());
            if(passage.getEndTime() != null){
                json.put("endTime",passage.getEndTime().toString());
            }
            if(passage.getPhoto() != null){
                json.put("photo",passage.getPhoto());
            }
            if(passage.getTheme() != null){
                json.put("theme",passage.getTheme());
            }
            if(passage.getGroupId()!=null){
                json.put("groupId",passage.getGroupId());
            }
            array.add(json);
        }
        return array.toString();
    }

    @RequestMapping(value = "getClassStudents",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getClassStudents(int classId){
        List<ClassMember> classMembers = classMemberDao.findByClass(classId);
        JSONArray array = new JSONArray();
        for(ClassMember classMember:classMembers){
            User user = userDao.findById(classMember.getUserId());
            JSONObject obj = new JSONObject();
            obj.put("account",user.getAccount());
            array.add(obj);
        }
        return array.toString();
    }

    @RequestMapping(value = "getClassById",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getClassById(int id){
        return JSONObject.fromObject(classDao.findById(id)).toString();
    }

    @RequestMapping(value="createClass",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String createClass(int teacherId,String name){
        int id = classDao.getMax();
        Class myClass = new Class();
        myClass.setId(id+1);
        myClass.setClassName(name);
        myClass.setTeacherId(teacherId);
        myClass.setCreateTime(new Date());
        classDao.add(myClass);
        return ""+(id+1);
    }

    @RequestMapping(value="joinClass",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String joinGroup(int classNumber,int userId){
        int classId = classNumber - classStart;
        ClassMember classMember = new ClassMember();
        classMember.setClassId(classId);
        classMember.setUserId(userId);
        classMemberDao.add(classMember);
        return "success";
    }
}