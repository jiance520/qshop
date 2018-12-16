package com.dao;

import com.entity.*;

public interface IHarddiskDao {
    //通过id查显卡
    Harddisk selectByPrimaryKey(long hid);
}
