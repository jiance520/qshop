package com.dao;

import com.entity.*;

import java.util.*;

public interface  IFeatureDao {
    //通过id查特性
    Feature selectByPrimaryKey(long fid);
    //查询所有特性
    List<Feature> selectAll();
}
