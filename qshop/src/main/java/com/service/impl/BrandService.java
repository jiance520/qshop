package com.service.impl;

import com.dao.IBrandDao;
import com.entity.Brand;
import com.service.IBrandService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("brandService")
public class BrandService implements IBrandService {
    @Autowired
    private IBrandDao brandDao;
    public Brand selectByPrimaryKey(long did) {
        return brandDao.selectByPrimaryKey(did);
    }

    public List<Brand> selectAll() {
        return brandDao.selectAll();
    }
}
