package com.service.impl;

import com.dao.IFeatureDao;
import com.entity.Feature;
import com.service.IFeatureService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("featureService")
public class FeatureService implements IFeatureService {
    @Autowired
    private IFeatureDao featureDao;
    public Feature selectByPrimaryKey(long fid) {
        return featureDao.selectByPrimaryKey(fid);
    }

    public List<Feature> selectAll() {
        return featureDao.selectAll();
    }
}
