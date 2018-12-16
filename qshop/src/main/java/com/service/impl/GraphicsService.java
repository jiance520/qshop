package com.service.impl;

import com.dao.IGraphicsDao;
import com.entity.Genre;
import com.entity.Graphics;
import com.service.IGraphicsService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("graphicsService")
public class GraphicsService implements IGraphicsService {
    @Autowired
    private IGraphicsDao graphicsDao;


    public Graphics selectByPrimaryKey(long gid) {
        return graphicsDao.selectByPrimaryKey(gid);
    }

    public List<Graphics> selectAll() {
        return graphicsDao.selectAll();
    }
}
