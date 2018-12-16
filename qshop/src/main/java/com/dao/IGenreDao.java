package com.dao;
import com.entity.*;
import java.util.*;
public interface IGenreDao {
    //通过id查类型
    Genre selectByPrimaryKey(long gid);
    //查询所有类型
    List<Genre>  selectAll();
}
