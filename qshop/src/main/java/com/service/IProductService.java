package com.service;
import java.util.*;
import com.entity.*;
public interface IProductService {
    //查询所有产品图片
    List<Product> selectAll();
    //查询单个产品
    Product selectOne(long pid);
    //查所有
    List<Product> selectAllProduct(Product p);
}
