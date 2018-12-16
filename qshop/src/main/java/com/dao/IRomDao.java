package com.dao;

import com.entity.*;

import java.util.*;

public interface IRomDao {
    //通过id查内存
    Rom selectByPrimaryKey(long rid);
    //查询所有内存
    List<Rom> selectAll();
}
