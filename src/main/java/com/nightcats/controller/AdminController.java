package com.nightcats.controller;

import com.nightcats.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/admin")
    public String admin(){
        //adminService.add(200,200);
        return "admin";
    }
}
