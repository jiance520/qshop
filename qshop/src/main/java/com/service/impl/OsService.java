package com.service.impl;

import com.dao.IOsDao;
import com.entity.Os;
import com.service.IOsService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("osService")
public class OsService implements IOsService {
    @Autowired
    private IOsDao osDao;
    public Os selectByPrimaryKey(long oid) {
        return osDao.selectByPrimaryKey(oid);
    }

    public List<Os> selectAll() {
        return osDao.selectAll();
    }
}
