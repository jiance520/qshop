package com.dao;
import com.entity.*;
import java.util.*;
public interface IBrandDao {
    //通过id查品牌
    Brand selectByPrimaryKey(long did);
    //查询所有品牌
    List<Brand>  selectAll();
}
