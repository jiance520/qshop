package com.service.impl;

import com.dao.IScreenDao;
import com.entity.Screen;
import com.service.IScreenService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("screenService")
public class ScreenService implements IScreenService {
    @Autowired
    private IScreenDao screenDao;
    public Screen selectByPrimaryKey(long sid) {
        return screenDao.selectByPrimaryKey(sid);
    }

    public List<Screen> selectAll() {
        return screenDao.selectAll();
    }
}
