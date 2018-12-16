package com.service;

import com.entity.*;

import java.util.*;

public interface IGraphicsService {
    //通过id查显卡
    Graphics selectByPrimaryKey(long gid);
    //查询所有显卡
    List<Graphics> selectAll();
}
