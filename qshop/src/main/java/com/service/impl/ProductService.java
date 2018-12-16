package com.service.impl;
import com.dao.IProductDao;
import com.entity.Product;
import com.service.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("productService")
public class ProductService implements IProductService{

    @Autowired
    private IProductDao productDao;

    public List<Product> selectAll() {
        return productDao.selectAll();
    }


    public Product selectOne(long pid) {
        return productDao.selectOne(pid);
    }


    public List<Product> selectAllProduct(Product p) {
        return productDao.selectAllProduct(p);
    }
}
