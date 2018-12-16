package com.service;

import com.entity.Feature;

import java.util.*;

public interface IFeatureService {
    //通过id查特性
    Feature selectByPrimaryKey(long fid);
    //查询所有特性
    List<Feature> selectAll();
}
