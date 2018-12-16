package com.service;

import com.entity.*;
import java.util.*;
public interface IBrandService {
    //通过id查品牌
    Brand selectByPrimaryKey(long did);
    //查询所有品牌
    List<Brand>  selectAll();
}
