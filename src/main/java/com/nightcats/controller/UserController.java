package com.nightcats.controller;

import com.nightcats.dao.UserDao;
import com.nightcats.data.User;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    private UserDao userDao;

    @RequestMapping("/loginChk")
    @ResponseBody
    public Object loginChk(HttpSession session, @RequestParam("account")String account,@RequestParam("password")String password,@RequestParam(value="callback",required = false)String callback){
        User search = userDao.findUserByAccount(account);
        if(search == null){
            //不存在此用户
            if(callback != null){
                MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("1");
                mappingJacksonValue.setJsonpFunction(callback);
                return mappingJacksonValue;
            }
            return "1";
        }else{
            if(search.getPassword().equals(password)){
                    session.setAttribute("account",account);
                    //登录成功
                    if(callback != null){
                        MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("0");
                        mappingJacksonValue.setJsonpFunction(callback);
                        return mappingJacksonValue;
                    }
                    return "0";
            }else {
                //密码错误
                if(callback != null){
                    MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("2");
                    mappingJacksonValue.setJsonpFunction(callback);
                    return mappingJacksonValue;
                }
                return "2";
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

}
