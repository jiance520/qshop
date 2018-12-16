package com.service.impl;

import com.dao.IExpressDao;
import com.entity.Express;
import com.service.IExpressService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
@MapperScan(basePackages = "com.dao")
@Service("expressService")
public class ExpressService implements IExpressService {
    @Autowired
   private IExpressDao expressDao;
    public List<Express> selectAll() {
        return expressDao.selectAll();
    }


    public Express selectOne(String name) {
        return expressDao.selectOne(name);
    }
}
