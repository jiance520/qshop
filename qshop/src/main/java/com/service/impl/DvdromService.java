package com.service.impl;

import com.dao.IDvdromDao;
import com.entity.Dvdrom;
import com.service.IDvdromService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("dvdromService")
public class DvdromService implements IDvdromService {
    @Autowired
    private IDvdromDao dvdromDao;
    public Dvdrom selectByPrimaryKey(long did) {
        return dvdromDao.selectByPrimaryKey(did);
    }
}
