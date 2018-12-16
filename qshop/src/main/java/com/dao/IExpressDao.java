package com.dao;

import com.entity.*;
import java.util.*;

public interface IExpressDao {
    //查询所有的快递公司
    List<Express> selectAll();

    //通过名字查询快递公司
    Express selectOne(String name);
}
