package com.nightcats.controller;

import com.nightcats.dao.*;
import com.nightcats.data.*;
import com.nightcats.service.FrontService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class PassageController {
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

    @RequestMapping(value = "getPassage",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String getPassage(HttpServletRequest request){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        int id = Integer.parseInt(request.getParameter("id"));
        Passage passage = passageDao.findById(id);
        JSONObject json = new JSONObject();
        json.put("id",passage.getId());
        json.put("title",passage.getTitle());
        json.put("content",passage.getContent());
        json.put("auth",passage.getAuth());
        json.put("releaseTime",format.format(passage.getReleaseTime()));
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
        json.put("count",annotationDao.getCountByPass(passage.getId()));
        return json.toString();
    }

    @RequestMapping(value = "/getAllPassages",produces = "text/json; charset=utf-8")
    @ResponseBody
    public String getAllPassages(){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<Passage> passages = passageDao.findAll();
        JSONArray jsonArray = new JSONArray();
        for(Passage passage:passages){
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
            long count = dianzanDao.getCountByQuery("select count(*) from Dianzan where passageId = "+passage.getId());
            json.put("likeCount",count);
            jsonArray.add(json);
        }
        return jsonArray.toString();
    }

    @RequestMapping(value = "/addPassage")
    @ResponseBody
    public String addPassage(HttpServletRequest request){
        String send = "success";
        String title = request.getParameter("title");
        String content = request.getParameter("editorValue");
        Date releaseTime = new Date(System.currentTimeMillis());      //TODO 不知为何会少13小时
        //若发生异常截止时间为当前时间
        Date endTime = null;
        if(request.getParameter("endTime")!= null) {
            try {
                String timeStr = request.getParameter("endTime");
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                endTime = new Date(formatter.parse(timeStr).getTime());    //TODO 不知为何会少一天
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        String auth = request.getParameter("auth");
        int classId = Integer.parseInt(request.getParameter("classId"));
        int teacherId = Integer.parseInt(request.getParameter("teacherId"));
        String theme = null;
        if(request.getParameter("theme") != null){
            theme = request.getParameter("theme");
        }
        String photo = null;

        int passageId = passageDao.getMax();        //获取目前最大id
        int type = Integer.parseInt(request.getParameter("type"));
        if(type == 0){
            List<User> users = userDao.findStusByTech(teacherId);
            for(User user:users){
                Homework homework = new Homework();
                homework.setFinish(false);
                homework.setClassId(classId);
                homework.setStudentId(user.getId());
                homework.setTeacherId(teacherId);
                homework.setPassageId(passageId+1);
                homeworkDao.add(homework);
            }
        }

        System.out.print("maxId:"+passageId+"\n");

        // 创建一个通用的多部分解析器.
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        // 设置编码
        commonsMultipartResolver.setDefaultEncoding("utf-8");
        // 判断是否有文件上传
        if (commonsMultipartResolver.isMultipart(request)) {//有文件上传
            //send+=":+hasFileUpload";
            MultipartHttpServletRequest fileRequest = (MultipartHttpServletRequest)request;
            MultipartFile file = fileRequest.getFile("image");
            //System.out.printf(file.toString());
            if((!file.isEmpty())&&(!file.getOriginalFilename().equals(""))){
                //String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles");
                String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"EAnnotation";
                //send+="+not empty and path:"+path+"\n";
                String fileName = file.getOriginalFilename();
                File pFile = new File(path);
                pFile.setWritable(true,false);
                if(!pFile.exists()){
                    pFile.mkdirs();
                }
                String ultiPath = path+File.separator+frontService.generateRandomFilename()+fileName.substring(fileName.lastIndexOf(".")+1);
                File ultiFile = new File(ultiPath);
                ultiFile.setWritable(true,false);
                try {
                    file.transferTo(ultiFile);
                    photo = ultiPath.substring(ultiPath.indexOf("uploadFiles"));
                    photo = photo.replaceAll("\\\\","/");
                    //send+="+save success and photo:"+photo;
                } catch (IOException e) {
                    //send+="+exception:"+e.getMessage();
                    e.printStackTrace();
                }
            }
        }
        frontService.addPassage(passageId+1,title,content,photo,releaseTime,endTime,theme,auth,classId,type,teacherId);
        return send;
    }

    @RequestMapping(value="/getHandout",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getHandout(int classId){
        List<Passage> passages = passageDao.findClassHandouts(classId);
        return transPassages(passages);
    }

    private String transPassages(List<Passage> passages){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        JSONArray jsonArray = new JSONArray();
        for(Passage passage:passages){
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
            jsonArray.add(json);
        }
        return jsonArray.toString();
    }

    @RequestMapping(value = "/setLike",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String setLike(HttpServletRequest request,int userId,int passageId){
        Dianzan dianzan = new Dianzan();
        dianzan.setUserId(userId);
        dianzan.setPassageId(passageId);
        if(request.getParameter("annotationId") != null){
            dianzan.setAnnotationId(Integer.parseInt(request.getParameter("annotationId")));
        }
        dianzanDao.add(dianzan);
        return "success";
    }

    @RequestMapping(value = "/cancelLike",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String cancelLike(HttpServletRequest request,int userId,int passageId){
        Dianzan dianzan;
        if(request.getParameter("annotationId") != null){
            dianzan = dianzanDao.getByQuery("from Dianzan where userId = "+userId+" and passageId = "+passageId+" and annotationId = "+request.getParameter("annotationId"));
        }else{
            dianzan = dianzanDao.getByQuery("from Dianzan where userId = "+userId+" and passageId = "+passageId);
        }
        dianzanDao.delete(dianzan.getId());
        return "success";
    }

    @RequestMapping(value = "/isLike",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String isLike(HttpServletRequest request,int passageId,int userId){
        List<Dianzan> dianzans = new ArrayList<Dianzan>();
        if(request.getParameter("annotationId") != null){
            dianzans = dianzanDao.findListByQuery("from Dianzan where userId = "+userId+" and passageId = "+passageId+" and annotationId = "+request.getParameter("annotationId"));
        }else{
            dianzans = dianzanDao.findListByQuery("from Dianzan where userId = "+userId+" and passageId = "+passageId);
        }
        if(dianzans.isEmpty()){
            return "false";
        }else{
            return "true";
        }
    }

    @RequestMapping(value = "/countLike",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String countLike(HttpServletRequest request){
        String passage = request.getParameter("passageId");
        String annotation = request.getParameter("annotationId");
        if(passage != null && annotation == null){
            return dianzanDao.getCountByQuery("select count(*) from Dianzan where passageId = "+passage)+"";
        }
        if(passage == null && annotation != null){
            return dianzanDao.getCountByQuery("select count(*) from Dianzan where annotationId = "+annotation)+"";
        }
        return "-1";
    }

    @RequestMapping(value = "/getRank",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getRank(){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<LikeCount> ranks = likeCountDao.findAll();
        JSONArray array = new JSONArray();
        for(LikeCount rank:ranks){
            JSONObject obj = new JSONObject();
            if(rank.getType() == 0){
                Passage passage = passageDao.findById(rank.getPa_id());
                obj.put("passageId",passage.getId());
                obj.put("title",passage.getTitle());
                obj.put("theme",passage.getTheme());
                obj.put("content",passage.getContent());
                obj.put("releaseTime",format.format(passage.getReleaseTime()));
                obj.put("photo",passage.getPhoto());
                obj.put("likecount",rank.getNum());
            }else if(rank.getType() == 1){
                Annotation annotation = annotationDao.findById(rank.getPa_id());
                obj.put("id",annotation.getId());
                obj.put("selected",annotation.getSelected());
                obj.put("content",annotation.getContent());
                obj.put("passageId",annotation.getPassageId());
                obj.put("likecount",rank.getNum());
            }
            array.add(obj);
        }
        return array.toString();
    }
}
