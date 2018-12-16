package com.service.impl;

import com.dao.IGenreDao;
import com.entity.Genre;
import com.service.IGenreService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("genreService")
public class GenreService implements IGenreService {
    @Autowired
    private IGenreDao genreDao;
    public Genre selectByPrimaryKey(long gid) {
        return genreDao.selectByPrimaryKey(gid);
    }

    public List<Genre> selectAll() {
        return genreDao.selectAll();
    }
}
