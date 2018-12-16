package com.dao;

import com.entity.*;

import java.util.List;

public interface ISellproductDao {
    //通过用户ID查询所有的订单
    List<Sellorder> selectAll(Long id);
}
