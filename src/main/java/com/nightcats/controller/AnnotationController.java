package com.nightcats.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnnotationController {

    @RequestMapping("/ancourse")
    public String ancourse(){
        return "ancourse";
    }

    @RequestMapping("/anntator")
    public String anntator(){
        return "anntator";
    }

    @RequestMapping("/anntatorweb")
    public String anntatorweb(){
        return "anntatorweb";
    }

    @RequestMapping("/class")
    public String mclass(){
        return "class";
    }

    @RequestMapping("/classmates")
    public String classmates(){
        return "classmates";
    }

    @RequestMapping("/classteacher")
    public String classteacher(){
        return "classteacher";
    }

    @RequestMapping("/correct")
    public String correct(){
        return "correct";
    }

    @RequestMapping("/course")
    public String course(){
        return "course";
    }

    @RequestMapping("/course2")
    public String course2(){
        return "course2";
    }

    @RequestMapping("/homework")
    public String homework(){
        return "homework";
    }

    @RequestMapping("/homework2")
    public String homework2(){
        return "homework2";
    }

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/parstucompelet")
    public String parstucompelet(){
        return "parstucompelet";
    }

    @RequestMapping("/person")
    public String person(){
        return "person";
    }

    @RequestMapping("/person1")
    public String person1(){
        return "person1";
    }

    @RequestMapping("/person2")
    public String person2(){
        return "person2";
    }

    @RequestMapping("/pub")
    public String pub(){
        return "pub";
    }

    @RequestMapping("/pub2")
    public String pub2(){
        return "pub2";
    }

    @RequestMapping("/stindex")
    public String stindex(){
        return "stindex";
    }

    @RequestMapping("/stindex2")
    public String stindex2(){
        return "stindex2";
    }

    @RequestMapping("/stlist")
    public String stlist(){
        return "stlist";
    }

    @RequestMapping("/stucompelet")
    public String stucompelet(){
        return "stucompelet";
    }

    @RequestMapping("/subanntator")
    public String subanntator(){
        return "subanntator";
    }

    @RequestMapping("/subclass")
    public String subclass(){
        return "subclass";
    }

    @RequestMapping("/subcorrect")
    public String subcorrect(){
        return "subcorrect";
    }

    @RequestMapping("/tcindex")
    public String tcindex(){
        return "tcindex";
    }

    @RequestMapping("/unindex")
    public String unindex(){
        return "unindex";
    }

    @RequestMapping("/web")
    public String web(){
        return "web";
    }
}
