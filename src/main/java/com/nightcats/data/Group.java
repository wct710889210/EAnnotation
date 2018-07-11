package com.nightcats.data;

import java.util.Date;

public class Group {
    private int id;
    private Integer founderId;
    private Date createTime;
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getFounderId() {
        return founderId;
    }

    public void setFounderId(Integer founderId) {
        this.founderId = founderId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
