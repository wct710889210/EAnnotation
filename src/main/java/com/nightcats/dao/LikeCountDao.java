package com.nightcats.dao;

import com.nightcats.data.LikeCount;
import java.util.List;

public interface LikeCountDao {
    public List<LikeCount> findAll();
}
