package com.service.impl;

import com.dao.IVipDao;
import com.entity.Vip;
import com.service.IVipService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("vipService")
public class VipService implements IVipService{
    @Autowired
   private IVipDao vipDao;

    public Vip Login(Vip u) {
        return vipDao.Login(u);
    }


    public int insert(Vip user) {
        return vipDao.insert(user);
    }


    public Vip selectSigOne(String username) {
        return vipDao.selectSigOne(username);
    }


    public Vip findPassword(Map<String, Object> mp) {
        return vipDao.findPassword(mp);
    }


    public int updateVipInformation(Vip user) {
        return vipDao.updateVipInformation(user);
    }
}
