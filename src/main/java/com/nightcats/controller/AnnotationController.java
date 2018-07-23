package com.nightcats.controller;

import com.nightcats.dao.*;
import com.nightcats.data.Annotation;
import com.nightcats.data.Dianzan;
import com.nightcats.data.User;
import com.nightcats.service.FrontService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class AnnotationController {
    @Autowired
    private FrontService frontService;
    @Autowired
    private AnnotationDao annotationDao;
    @Autowired
    private PassageDao passageDao;
    @Autowired
    private HomeworkDao homeworkDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private DianzanDao dianzanDao;
    @Autowired
    private LikeCountDao likeCountDao;

    //页面-->
    @RequestMapping("/ancourse")
    public String ancourse(){
        return "ancourse";
    }

    //后期删除
    @RequestMapping("/anntator")
    public String anntator(Model model){
        List<Annotation> annotations = annotationDao.findAnnsBy2Id(1,1);
        model.addAttribute("annotations",annotations);
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
    //<--页面

    //接口-->
    //获取指定用户、文章的批注
    @RequestMapping(value = "getAnnotations",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String getAnnotations(int passageId,int userId){
        List<Annotation> annotations = annotationDao.findAnnsBy2Id(userId,passageId);
        return JSONArray.fromObject(annotations).toString();
    }

    //文章的所有批注，按时间降序
    @RequestMapping(value = "getAllAnnotations",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String getAnnotations(int passageId){
        List<Annotation> annotations = annotationDao.findAnnsByPass(passageId);
        JSONArray jsonArray = new JSONArray();
        for(Annotation annotation:annotations){
            JSONObject json = new JSONObject();
            json.put("id",annotation.getId());
            json.put("userId",annotation.getUserId());
            json.put("passageId",annotation.getPassageId());
            json.put("start",annotation.getStart());
            json.put("end",annotation.getEnd());
            json.put("content",annotation.getContent());
            json.put("type",annotation.getType());
            json.put("selected",annotation.getSelected());
            json.put("paragraph",annotation.getParagraph());
            User user = userDao.findById(annotation.getUserId());
            json.put("userType",user.getType());
            json.put("userName",user.getAccount());
            long count = dianzanDao.getCountByQuery("select count(*) from Dianzan where annotationId="+annotation.getId());
            json.put("likeCount",count);
            jsonArray.add(json);
        }
        return jsonArray.toString();
    }



    //批注的怎删改查-->
    @RequestMapping(value = "/addAnnotation")
    @ResponseBody
    public String addAnnotation(HttpServletRequest request){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        int userId = Integer.parseInt(request.getParameter("userId"));
        int passageId = Integer.parseInt(request.getParameter("passageId"));
        int start = Integer.parseInt(request.getParameter("start"));
        int end = start + Integer.parseInt(request.getParameter("end"));
        String content = request.getParameter("content");
        int type = Integer.parseInt(request.getParameter("type"));
        String selected = request.getParameter("selected");
        int paragraph = Integer.parseInt(request.getParameter("paragraph"));
        frontService.addAnnotation(userId,passageId,start,end,content,type,selected,paragraph);
        return ""+annotationDao.getMaxId();
    }

    @RequestMapping("/deleteAnnotation")
    @ResponseBody
    public String deleteAnnotation(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        annotationDao.delete(id);
        return "success";
    }

    @RequestMapping("updateAnnotation")
    @ResponseBody
    public String updateAnnotation(HttpServletRequest request){
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        int id = Integer.parseInt(request.getParameter("id"));
        Annotation annotation = annotationDao.findById(id);
        if(request.getParameter("userId")!=null){
            annotation.setUserId(Integer.parseInt(request.getParameter("userId")));
        }
        if(request.getParameter("passageId")!=null){
            annotation.setPassageId(Integer.parseInt(request.getParameter("passageId")));
        }
        if(request.getParameter("content")!=null){
            annotation.setContent(request.getParameter("content"));
        }
        if(request.getParameter("type")!=null){
            annotation.setType(Integer.parseInt(request.getParameter("type")));
        }
        if(request.getParameter("selected")!=null){
            annotation.setSelected(request.getParameter("selected"));
        }
        if(request.getParameter("paragraph")!=null){
            annotation.setParagraph(Integer.parseInt(request.getParameter("paragraph")));
        }
        annotationDao.update(annotation);
        return "success";
    }
    //<--批注的增加删改查
}
