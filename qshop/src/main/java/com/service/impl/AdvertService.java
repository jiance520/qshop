package com.service.impl;

import com.dao.IAdvertDao;
import com.entity.*;
import com.service.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("advertService")
public class AdvertService implements IAdvertService{
    @Autowired
    private IAdvertDao advertDao;

    public List<Advert> selectAll() {
        return advertDao.selectAll();
    }
}
