package com.service.impl;

import com.dao.IRomDao;
import com.entity.Rom;
import com.service.IRomService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("romService")
public class RomService implements IRomService {
    @Autowired
    private IRomDao romDao;
    public Rom selectByPrimaryKey(long rid) {
        return romDao.selectByPrimaryKey(rid);
    }

    public List<Rom> selectAll() {
        return romDao.selectAll();
    }
}
