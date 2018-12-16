package com.dao;

import com.entity.*;
import java.util.*;

public interface IScreenDao {
     //通过id查尺寸
     Screen selectByPrimaryKey(long sid);
     //查询所有尺寸
     List<Screen> selectAll();
}
