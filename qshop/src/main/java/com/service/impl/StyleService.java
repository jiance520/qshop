package com.service.impl;

import com.dao.IStyleDao;
import com.entity.Style;
import com.service.IStyleService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("styleService")
public class StyleService implements IStyleService {
    @Autowired
    private IStyleDao styleDao;
    public Style selectByPrimaryKey(long coid) {
        return styleDao.selectByPrimaryKey(coid);
    }

    public List<Style> selectAll() {
        return styleDao.selectAll();
    }
}
