package com.service;

import com.entity.Vip;
import java.util.*;
public interface IVipService {
    //登录
    Vip Login(Vip u);
    //普通用户注册
    int insert(Vip user);
    //通过名字查询用户
    Vip selectSigOne(String username);
    //找回密码
    Vip findPassword(Map<String,Object> mp);
    int updateVipInformation(Vip user);//修改个人信息
}
