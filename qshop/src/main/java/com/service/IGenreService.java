package com.service;

import com.entity.Genre;

import java.util.*;

public interface IGenreService {
    //通过id查类型
    Genre selectByPrimaryKey(long gid);
    //查询所有类型
    List<Genre> selectAll();
}
