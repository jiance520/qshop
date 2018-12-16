package com.action;

import com.entity.*;
import com.service.*;
import java.util.*;

import com.service.impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {
    @Autowired
    private IAdvertService advertService;
    @Autowired
    private IBrandService brandService;
    @Autowired
    private IGenreService genreService;
    @Autowired
    private IRomService romService;
    @Autowired
    private  ICpuService cpuService;
    @Autowired
    private IScreenService screenService;
    @Autowired
    private IGraphicsService graphicsService;
    @Autowired
    private IOsService osService;
    @Autowired
    private IFeatureService featureService;
    @Autowired
    private IStyleService styleService;
    @Autowired
    private ProductService productService;

    @RequestMapping("/SearchAction")
    public ModelAndView SearchAction(ModelAndView mvo,Long brandid,Long genreid,Long romid,Long cpuunitid,Long screenid,Long graphicsid,Long productosid,Long featureid,Long productstyleid) {
        Product pro = new Product();
        pro.setBrandid(brandid);
        pro.setGenreid(genreid);
        pro.setRomid(romid);
        pro.setCpuunitid(cpuunitid);
        pro.setScreenid(screenid);
        pro.setGraphicsid(graphicsid);
        pro.setProductosid(productosid);
        pro.setFeatureid(featureid);
        pro.setProductstyleid(productstyleid);
        List<Product> pplist = productService.selectAllProduct(pro);
        int count=pplist.size();
        mvo.addObject("count",count);
        mvo.addObject("pplist",pplist);
        List<Product> plist=productService.selectAll();
        mvo.addObject("plist",plist);
        //所有品牌
        List<Brand> blist=brandService.selectAll();
        mvo.addObject("blist",blist);
        //所有类型
        List<Genre> glist=genreService.selectAll();
        mvo.addObject("glist",glist);
        //所有内存
        List<Rom> rlist =romService.selectAll();
        mvo.addObject("rlist",rlist);
        //所有处理器
        List<Cpu> clist=cpuService.selectAll();
        mvo.addObject("clist",clist);
        //所有尺寸
        List<Screen> slist=screenService.selectAll();
        mvo.addObject("slist",slist);
        //所有显卡
        List<Graphics> grlist =graphicsService.selectAll();
        mvo.addObject("grlist",grlist);
        //所有系统
        List<Os> olist =osService.selectAll();
        mvo.addObject("olist",olist);
        //所有特性
        List<Feature> flist =featureService.selectAll();
        mvo.addObject("flist",flist);
        //所有颜色
        List<Style> tlist =styleService.selectAll();
        mvo.addObject("tlist",tlist);
        if (pplist != null) {
            mvo.setViewName("search");
            return mvo;
        }
        return mvo;
    }
}