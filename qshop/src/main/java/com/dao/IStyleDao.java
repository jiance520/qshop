package com.dao;

import com.entity.*;
import java.util.*;

public interface IStyleDao {
     //通过id查颜色
     Style selectByPrimaryKey(long coid);
     //查询所有颜色
     List<Style> selectAll();
}
