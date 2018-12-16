package com.service.impl;

import com.dao.IHarddiskDao;
import com.entity.Harddisk;
import com.service.IHarddiskService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("harddiskService")
public class HarddiskService implements IHarddiskService {
    @Autowired
    private IHarddiskDao harddiskDao;
    public Harddisk selectByPrimaryKey(long hid) {
        return harddiskDao.selectByPrimaryKey(hid);
    }
}
