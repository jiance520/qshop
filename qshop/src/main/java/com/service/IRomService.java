package com.service;

import com.entity.Rom;

import java.util.*;

public interface IRomService {
    //通过id查内存
    Rom selectByPrimaryKey(long rid);
    //查询所有内存
    List<Rom> selectAll();
}
