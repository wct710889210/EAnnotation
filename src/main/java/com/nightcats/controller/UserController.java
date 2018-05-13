package com.nightcats.controller;

import com.nightcats.dao.UserDao;
import com.nightcats.data.User;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
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
    public String loginChk(HttpSession session, @RequestParam("account")String account,@RequestParam("password")String password){
        User search = userDao.findUserByAccount(account);
        if(search == null){
            //不存在此用户
            return "1";
        }else{
            if(search.getPassword().equals(password)){
                    session.setAttribute("account",account);
                    //登录成功
                    return "0";
            }else {
                //密码错误
                return "2";
            }
        }

    }

    @RequestMapping("logout")
    @ResponseBody
    public String logout(HttpSession session){
        session.removeAttribute("account");
        return "success";
    }

    @RequestMapping(value="/getCurrentUser",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String getCurrentUser(HttpSession session){
        if(session.getAttribute("account") != null){
            String account = (String)session.getAttribute("account");
            User user = userDao.findUserByAccount(account);
            JSONObject json = JSONObject.fromObject(user);
            return json.toString();
        }else {
            return "0";
        }
    }

}
