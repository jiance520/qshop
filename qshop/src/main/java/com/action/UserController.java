package com.action;

import com.alibaba.fastjson.JSON;
import com.entity.*;
import com.service.*;

import java.io.PrintWriter;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {
    @Autowired
    private ISellorderService sellorderService;
    //查询用户所有订单信息
    @RequestMapping(value="/order",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object order(HttpServletRequest request){
        String json = "";
        Vip vip = (Vip)request.getSession().getAttribute("userinfo");
        List<Sellorder> slist = sellorderService.selectAll(vip.getVid());
        json = JSON.toJSONString(slist);
        System.out.println("-----json-----"+json);
        return json;
    }

}
