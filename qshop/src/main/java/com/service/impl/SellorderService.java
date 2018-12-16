package com.service.impl;

import com.dao.ISellorderDao;
import com.entity.Sellorder;
import com.service.ISellorderService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("sellorderService")
public class SellorderService implements ISellorderService {
    @Autowired
    private ISellorderDao sellorderDao;
    public List<Sellorder> selectAll(Long id) {
        return sellorderDao.selectAll(id);
    }


    public int insert(Sellorder order) {
        return sellorderDao.insert(order);
    }
}
