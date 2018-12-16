package com.service;

import com.entity.Harddisk;

public interface IHarddiskService {
    //通过id查显卡
    Harddisk selectByPrimaryKey(long hid);
}
