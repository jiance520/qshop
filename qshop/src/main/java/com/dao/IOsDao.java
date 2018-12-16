package com.dao;

import com.entity.*;

import java.util.List;

public interface IOsDao {
    //通过id查系统
    Os selectByPrimaryKey(long oid);
    //查询所有系统
    List<Os> selectAll();
}
