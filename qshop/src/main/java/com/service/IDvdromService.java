package com.service;

import com.entity.Dvdrom;

public interface IDvdromService {
    //通过id查光驱
    Dvdrom selectByPrimaryKey(long did);
}
