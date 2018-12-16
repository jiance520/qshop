package com.dao;
import com.entity.*;
import java.util.*;
public interface ICpuDao {
    //通过id查处理器
    Cpu selectByPrimaryKey(long cid);
    //查询所有处理器
    List<Cpu>  selectAll();
}
