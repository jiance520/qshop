package com.action;

import com.entity.Vip;
import com.service.IVipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.*;

@Controller
public class LoginController {
    @Autowired
    private IVipService vs;
    //登录
    @RequestMapping("/ifLogin")
    public ModelAndView ifLogin(HttpSession session, String username, String password,boolean yzm,ModelAndView mov) {
        System.out.println("uname=" + username);
        System.out.println("pwd=" + password);
        Vip user = new Vip();
        user.setUsername(username);
        user.setPassword(password);

        Vip temp = vs.Login(user);
        if (temp != null && yzm == true) {
            mov.setViewName("redirect:/indexPageShow");
            session.setAttribute("userinfo", temp);
            return mov;
        } else if (yzm == false) {
            mov.addObject("error", "验证码错误");
            mov.setViewName("login");
            return mov;
        } else {
            mov.addObject("error", "用户名或密码错误");
            mov.setViewName("login");
            return mov;
        }
    }
    //注册
    @RequestMapping("/register")
    public ModelAndView register(ModelAndView mvo,Vip m,boolean yzm,HttpServletRequest request) {
        if (yzm == true) {
            int num = vs.insert(m);
            if (num > 0) {
                System.out.println("--------------num=" + num);
                mvo.setViewName("login");
                return mvo;
            } else {
                mvo.addObject("msg", "注册失败，请重新注册");
                mvo.setViewName("register");
                return mvo;
            }
        } else{
            mvo.addObject("msg", "验证码错误");
            mvo.setViewName("register");
            return mvo;
        }
    }
    //注册用户名验证
    @RequestMapping("/nameCheck")
    public void nameCheck(HttpServletResponse response, String names)throws Exception{
        PrintWriter out = response.getWriter();
        Vip vip = vs.selectSigOne(names);
        if(vip!=null){
            out.print("true");
        }else{
            out.print("false");
        }
        out.flush();
        out.close();

    }
    //找回密码
    @RequestMapping("/findPassword")
    public ModelAndView findPassword(ModelAndView mvo,String username,String email,String phone,boolean yzm){
        if(yzm=true){
        Map<String,Object> mp = new HashMap<String,Object>();
        mp.put("username",username);
        mp.put("email",email);
        mp.put("phone",phone);
        Vip vip = vs.findPassword(mp);
        System.out.println("=================vip="+vip);
        mvo.addObject("vip",vip);
        mvo.setViewName("password2");
        return mvo;
        }else{
            mvo.addObject("msg", "验证码错误");
            mvo.setViewName("password1");
            return mvo;
        }

    }

    //个人信息修改
    @RequestMapping("/updataMsg")

    public ModelAndView updataMsg(ModelAndView mav,Vip user,HttpSession session) {

        System.out.println("修改用户信息=="+user);
        Object vid =  session.getAttribute("userId");

        System.out.println("用户ID=="+vid);

        Long vipid = (Long) vid;

        user.setVid(vipid);
        int num = vs.updateVipInformation(user);


        mav.setViewName("login");
        return mav;
    }
}
