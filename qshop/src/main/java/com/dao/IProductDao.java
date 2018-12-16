package com.dao;
import java.util.*;
import com.entity.*;
public interface IProductDao {
    //查询所有产品图片
    List<Product> selectAll();
    //查询单个产品
    Product selectOne(long pid);
    //查所有
    List<Product> selectAllProduct(Product p);

}
