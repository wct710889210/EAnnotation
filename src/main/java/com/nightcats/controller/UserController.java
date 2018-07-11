package com.nightcats.controller;

import com.nightcats.dao.AnnotationDao;
import com.nightcats.dao.PassageDao;
import com.nightcats.dao.UserDao;
import com.nightcats.data.Annotation;
import com.nightcats.data.Passage;
import com.nightcats.data.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserDao userDao;

    @Autowired
    private AnnotationDao annotationDao;

    @Autowired
    private PassageDao passageDao;

    @RequestMapping("/loginChk")
    @ResponseBody
    public Object loginChk(HttpSession session, @RequestParam("account")String account,@RequestParam("password")String password,@RequestParam(value="callback",required = false)String callback){
        User search = userDao.findUserByAccount(account);
        if(search == null){
            //不存在此用户
            if(callback != null){
                MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("-1");
                mappingJacksonValue.setJsonpFunction(callback);
                return mappingJacksonValue;
            }
            return "-1";
        }else{
            if(search.getPassword().equals(password)){
                    session.setAttribute("account",account);
                    search.setPassword(null);
                    JSONObject obj = JSONObject.fromObject(search);
                    //登录成功
                    if(callback != null){
                        MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(obj);
                        mappingJacksonValue.setJsonpFunction(callback);
                        return mappingJacksonValue;
                    }
                    return obj;
            }else {
                //密码错误
                if(callback != null){
                    MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("-2");
                    mappingJacksonValue.setJsonpFunction(callback);
                    return mappingJacksonValue;
                }
                return "-2";
            }
        }

    }

    @RequestMapping("logout")
    @ResponseBody
    public Object logout(HttpSession session,@RequestParam(value="callback",required = false)String callback){
        if(session.getAttribute("account")!=null){
            //有account属性
            session.removeAttribute("account");
            if(callback != null){
                MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("0");
                mappingJacksonValue.setJsonpFunction(callback);
                return mappingJacksonValue;
            }
            return "0";
        }
        //无account属性
        if(callback != null){
            MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("1");
            mappingJacksonValue.setJsonpFunction(callback);
            return mappingJacksonValue;
        }
        return "1";
    }

    @RequestMapping(value="/getCurrentUser",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Object getCurrentUser(HttpSession session,@RequestParam(value="callback",required = false)String callback){
        if(session.getAttribute("account") != null){
            String account = (String)session.getAttribute("account");
            User user = userDao.findUserByAccount(account);
            user.setPassword(null);
            JSONObject json = JSONObject.fromObject(user);
            if(callback != null){
                MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(user);
                mappingJacksonValue.setJsonpFunction(callback);
                return mappingJacksonValue;
            }
            return json.toString();
        }else {
            if(callback != null){
                MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("0");
                mappingJacksonValue.setJsonpFunction(callback);
                return mappingJacksonValue;
            }
            return "0";
        }
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
            json.put("auth",userDao.findById(passage.getReleaseId()).getAccount());
            json.put("releaseTime",format.format(passage.getReleaseTime().getTime()));
            json.put("classId",passage.getClassId());
            json.put("type",passage.getType());
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
