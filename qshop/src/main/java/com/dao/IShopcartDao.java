package com.dao;

import com.entity.*;
import java.util.*;

public interface IShopcartDao {
    //加入购物车
    int insert(Shopcart goods);
    //通过用户ID查询购物车所有的信息
    List<Shopcart> VipSelectAll(Long id);
    //查询购物车所有的货物
    List<Shopcart> selectAll();
    //通过productnum查询货物
    Shopcart selectOne(Long productnum);
    //通过ID删除货物
    int delete(Shopcart shopcart);
    //通过相同id查询到购物车所有产品
    List<Shopcart> SelectAllsameproduct(Long id);
    //根据id修改数量
    int updateone(Shopcart shopcart);

    //查询商品数量
   Integer Selectnum(Long id);

    List<Shopcart>Selectaaa(Shopcart sh);
}
