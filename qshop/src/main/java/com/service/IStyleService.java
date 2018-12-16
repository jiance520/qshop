package com.service;

import com.entity.*;
import java.util.*;

public interface IStyleService {
    //通过id查颜色
    Style selectByPrimaryKey(long coid);
    //查询所有颜色
    List<Style> selectAll();
}
