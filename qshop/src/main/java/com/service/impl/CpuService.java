package com.service.impl;

import com.dao.ICpuDao;
import com.entity.Cpu;
import com.service.ICpuService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("cpuService")
public class CpuService implements ICpuService {
    @Autowired
    private ICpuDao cpuDao;
    public Cpu selectByPrimaryKey(long cid) {
        return cpuDao.selectByPrimaryKey(cid);
    }


    public List<Cpu> selectAll() {
        return cpuDao.selectAll();
    }
}
