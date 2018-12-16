package com.dao;

import com.entity.*;
import java.util.*;

public interface ISellorderDao {
    //通过用户ID查询所有的订单
    List<Sellorder> selectAll(Long id);
    //新增订单
    int insert(Sellorder order);
}
