package com.service.impl;

import com.dao.IShopcartDao;
import com.entity.*;
import com.service.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("shopcartService")
public class ShopcartService implements IShopcartService {
    @Autowired
    private IShopcartDao shopcartDao;

    public int insert(Shopcart goods) {
        return shopcartDao.insert(goods);
    }

    public List<Shopcart> VipSelectAll(Long id) {
        return shopcartDao.VipSelectAll(id);
    }


    public List<Shopcart> selectAll() {
        return shopcartDao.selectAll();
    }


    public Shopcart selectOne(Long productnum) {
        return shopcartDao.selectOne(productnum);
    }


    public int delete(Shopcart shopcart) {
        return shopcartDao.delete(shopcart);
    }


    public List<Shopcart> SelectAllsameproduct(Long id) {
        return shopcartDao.SelectAllsameproduct(id);
    }

    //根据id修改数量
    public int updateone(Shopcart shopcart) {
        return shopcartDao.updateone(shopcart);
    }

    //查询商品数量
    public Integer Selectnum(Long id) {
        return shopcartDao.Selectnum(id);
    }


    public List<Shopcart> Selectaaa(Shopcart sh) {
        return shopcartDao.Selectaaa(sh);
    }
}
