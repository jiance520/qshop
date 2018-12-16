package com.service;

import com.entity.Screen;

import java.util.*;

public interface IScreenService {
    //通过id查尺寸
    Screen selectByPrimaryKey(long sid);
    //查询所有尺寸
    List<Screen> selectAll();
}
