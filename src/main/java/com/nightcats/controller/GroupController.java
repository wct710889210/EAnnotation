package com.nightcats.controller;

import com.nightcats.dao.GroupDao;
import com.nightcats.dao.GroupMemberDao;
import com.nightcats.dao.PassageDao;
import com.nightcats.dao.UserDao;
import com.nightcats.data.Group;
import com.nightcats.data.GroupMember;
import com.nightcats.data.Passage;
import com.nightcats.data.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

@Controller
public class GroupController {
    @Autowired
    private GroupMemberDao groupMemberDao;
    @Autowired
    private GroupDao groupDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private PassageDao passageDao;

    private int groupStart = 451456;

    @RequestMapping(value = "getGroupsByUser",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getGroupsByUser(int userId){
        JSONArray array = new JSONArray();
        List<GroupMember> groupMembers = groupMemberDao.findByUser(userId);
        for(GroupMember groupMember:groupMembers){
            Group group  = groupDao.findById(groupMember.getGroupId());
            User user = userDao.findById(group.getFounderId());
            JSONObject obj = new JSONObject();
            obj.put("groupId",group.getId());
            obj.put("groupNumber",groupStart+group.getId());
            obj.put("groupName",group.getName());
            obj.put("founder",user.getAccount());
            obj.put("foundTime",group.getCreateTime().toString());
            array.add(obj);
        }
        return array.toString();
    }

    @RequestMapping(value = "getPassageByGroup",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getPassageByGroup(int groupId){
        List<Passage> passages = passageDao.findListByQuery("from Passage where groupId="+groupId);
        passages.sort(new Comparator<Passage>() {
            @Override
            public int compare(Passage o1, Passage o2) {
                if(o1.getReleaseTime().before(o2.getReleaseTime())){
                    return 1;
                }else{
                    return -1;
                }
            }
        });
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        JSONArray jsonArray = new JSONArray();
        for(Passage passage:passages){
            User user = userDao.findById(passage.getReleaseId());
            JSONObject json = new JSONObject();
            json.put("id",passage.getId());
            json.put("title",passage.getTitle());
            json.put("content",passage.getContent());
            json.put("releaseTime",format.format(passage.getReleaseTime().getTime()));
            json.put("type",passage.getType());
            json.put("auther",user.getAccount());
            jsonArray.add(json);
        }
        return jsonArray.toString();
    }

    @RequestMapping(value="getGroupMember",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getGroupMember(int groupId){
        JSONArray array = new JSONArray();
        List<GroupMember> groupMembers = groupMemberDao.findByGroup(groupId);
        for(GroupMember groupMember:groupMembers){
            User user = userDao.findById(groupMember.getUserId());
            JSONObject obj = new JSONObject();
            obj.put("userId",user.getId());
            obj.put("userName",user.getAccount());
            array.add(obj);
        }
        return array.toString();
    }

    @RequestMapping(value="getGroupById",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getGroupById(int groupId){
        Group group = groupDao.findById(groupId);
        User user = userDao.findById(group.getFounderId());
        JSONObject obj = new JSONObject();
        obj.put("groupId",group.getId());
        obj.put("groupNumber",groupStart+group.getId());
        obj.put("groupName",group.getName());
        obj.put("founderName",user.getAccount());
        return obj.toString();
    }

    @RequestMapping(value="createGroup",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String createGroup(int founderId,String name){
        int id = groupDao.getMax();
        Group group = new Group();
        group.setId(id+1);
        group.setFounderId(founderId);
        group.setName(name);
        group.setCreateTime(new Date());
        groupDao.add(group);
        return ""+(id+1+groupStart);
    }

    @RequestMapping(value="joinGroup",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String joinGroup(int groupNumber,int userId){
        int groupId = groupNumber - groupStart;
        Group group = groupDao.findById(groupId);
        if(group == null){
            return "not found";
        }else {
            GroupMember groupMember = new GroupMember();
            groupMember.setUserId(userId);
            groupMember.setGroupId(groupId);
            groupMemberDao.add(groupMember);
            return "success";
        }
    }

    @RequestMapping(value="getAllGroup",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getAllGroup(){
        List<Group> groups = groupDao.findListByQuery("from Group");
        JSONArray array = new JSONArray();
        for(Group group:groups) {
            JSONObject obj = new JSONObject();
            obj.put("groupId", group.getId());
            obj.put("groupNumber", groupStart + group.getId());
            obj.put("groupName", group.getName());
            User user = userDao.findById(group.getFounderId());
            obj.put("founder", user.getAccount());
            obj.put("foundTime",group.getCreateTime().toString());
            array.add(obj);
        }
        return array.toString();
    }
}
