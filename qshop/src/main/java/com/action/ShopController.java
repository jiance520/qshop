package com.action;
import com.alibaba.fastjson.JSON;
import com.dao.IShopcartDao;
import com.entity.*;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ShopController {
    @Autowired
    private IProductService productService;
    @Autowired
    private IShopcartService shopcartService;
    @Autowired
    private IExpressService expressService;
    @Autowired
    private  ISellorderService sellorderService;

    @RequestMapping("ShopAction")
    public ModelAndView ShopAction(ModelAndView mvo, Long sid, HttpServletRequest request){

        Vip vip = (Vip)request.getSession().getAttribute("userinfo");
        if(vip!=null){

            //shopcart.setProductnum(product.getProductnum());
            Long num = new Long((long)0);

            Shopcart sh  =new Shopcart();
            sh.setVipid(vip.getVid());
            sh.setProductid(sid);
            List<Shopcart>list= shopcartService.Selectaaa(sh);
            System.out.println("对象="+list.size());
            for(int i=0;i<list.size();i++){
                Shopcart sh1 = list.get(i);
                num =sh1.getProductnum();
            }
           System.out.println("数量="+num);
            if(num>0){
                System.out.println("--------------修改"+sid);
                Shopcart shp=new Shopcart();
                shp.setProductnum(num+1);
                shp.setProductid(sid);
                shp.setVipid(vip.getVid());
                System.out.println("--------------对象"+shp);
                int dome = shopcartService.updateone(shp);
                System.out.println("--------------"+dome);
            }else{
                Shopcart shopcart = new Shopcart();
                shopcart.setVipid(vip.getVid());
                shopcart.setProductid(sid);
                int num1 = shopcartService.insert(shopcart);
                System.out.println("--------------新增");
               // System.out.println("--------------num="+num);
            }
            mvo.setViewName("redirect:/indexPageShow");
        }else{
            mvo.setViewName("login");
        }
        return mvo;
    }

    //购物车商品详情
    @RequestMapping("/shopcartshow")
    public ModelAndView shopcartshow(ModelAndView mvo,HttpServletRequest request){
        Vip vip = (Vip)request.getSession().getAttribute("userinfo");
        List<Shopcart> slist = shopcartService.VipSelectAll(vip.getVid());
        List<Product> plist = new ArrayList<Product>();
        for (Shopcart s : slist){
            Product product = productService.selectOne(s.getProductid());
            product.setNumber(s.getProductnum());
            plist.add(product);
        }
        mvo.addObject("plist",plist);
        mvo.setViewName("shoppingcard");
        return  mvo;
    }
    //删除购物车的商品
    @RequestMapping("/deletegoods")
    public ModelAndView deletegoods(ModelAndView mvo,Long id,HttpServletRequest request){
        Vip vip = (Vip)request.getSession().getAttribute("userinfo");
        Shopcart sh  =new Shopcart();
        sh.setVipid(vip.getVid());
        sh.setProductid(id);
        int num = shopcartService.delete(sh);

        mvo.setViewName("redirect:/shopcartshow");
        return mvo;
    }
    //快递配送信息
    @RequestMapping("/shoppingmes")
    public ModelAndView shoppingmes(ModelAndView mvo){
        List<Express> elist = expressService.selectAll();
        mvo.addObject("elist",elist);
        mvo.setViewName("shopping");
        return mvo;
    }

    //用户购物车信息
    @RequestMapping(value="/productpage",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object productpage(HttpServletRequest request){
        String json = "";
        Vip vip = (Vip)request.getSession().getAttribute("userinfo");
        List<Shopcart> slist = shopcartService.VipSelectAll(vip.getVid());
        List<Product> plist = new ArrayList<Product>();
        for(Shopcart s: slist){
            Product product = productService.selectOne(s.getProductid());
            product.setNumber(s.getProductnum());
            plist.add(product);
        }
        json = JSON.toJSONString(plist);
        System.out.println("-----json-----"+json);
        return json;
    }
    //生成订单
    @RequestMapping("/newOrder")
    public ModelAndView newOrder(ModelAndView mvo,Sellorder order,String express,HttpServletRequest request){
        System.out.println("================express="+express);
        //生成唯一订单编号
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        order.setOrdernum("QSHOPA"+sdf.format(new Date()));
        System.out.println("================订单是="+"QSHOPA"+sdf.format(new Date()));
        //快递选择
        Express es = expressService.selectOne(express);
        System.out.println("================快递是="+es.getEid());
        order.setExpressid(es.getEid());
        //商品总价
        int count = 0;
        Vip vip = (Vip)request.getSession().getAttribute("userinfo");
        List<Shopcart> slist = shopcartService.VipSelectAll(vip.getVid());
        for(Shopcart s: slist){
            Product product = productService.selectOne(s.getProductid());
            count+=product.getPrice();
        }
        BigDecimal a = new BigDecimal(count);
        System.out.println("================总价是="+a);
        order.setSum(a);
        //用户ID
        order.setVipid(vip.getVid());
        // System.out.println("================对象order="+order);
        //生成订单对象
        int num = sellorderService.insert(order);
        System.out.println("==================order="+order.getSoid());
       /* //将订单商品信息存入sellproduct表
        Sellproduct seel = new Sellproduct();
        for(Shopcart s: slist){
                        seel.setProductid(s.getProductid());
                        seel.setNum(s.getProductnum());
                        seel.setOrderid(order.getSoid());
            int snum = sellproductservice.insert(seel);
        }
        //删除购物车
        for(Shopcart s: slist){
            int ssnum = shopcartservice.deleteByPrimaryKey(s.getId());
        }*/
        mvo.addObject("order",order);
        mvo.setViewName("order");
        return mvo;

    }
}
