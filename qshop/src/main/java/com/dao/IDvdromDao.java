package com.dao;

import com.entity.*;

public interface IDvdromDao {
    //通过id查光驱
    Dvdrom selectByPrimaryKey(long did);
}
