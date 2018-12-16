package com.service;

import com.entity.Os;

import java.util.*;

public interface IOsService {
    //通过id查品牌
    Os selectByPrimaryKey(long oid);
    //查询所有系统
    List<Os> selectAll();
}
