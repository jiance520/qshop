package com.action;

import com.entity.*;
import com.service.*;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
    @Autowired
     private IAdvertService advertService;
    @Autowired
     private IProductService productService;
    @Autowired
    private IBrandService brandService;
    @Autowired
    private  ICpuService cpuService;
    @Autowired
    private IDvdromService dvdromService;
    @Autowired
    private IGenreService genreService;
    @Autowired
    private IGraphicsService graphicsService;
    @Autowired
    private IHarddiskService harddiskService;
    @Autowired
    private IRomService romService;
    @Autowired
    private IOsService osService;
    @Autowired
    private IScreenService screenService;
    @Autowired
    private IStyleService styleService;
    @Autowired
    private IFeatureService featureService;

    //主页显示
    @RequestMapping("/indexPageShow")
    public ModelAndView indexPageShow(ModelAndView mvo,String productname){
        if(productname==null){
        //查询所有广告信息
        List<Advert> alist = advertService.selectAll();
        System.out.println("-----------alist="+alist);
        List<Product> plist=productService.selectAll();
        System.out.println("-----------plist="+plist);
        mvo.addObject("alist",alist);
        mvo.addObject("plist",plist);
        }else{
            Product n =new Product();
            n.setProductname("%"+productname+"%");
            List<Advert> alist = advertService.selectAll();
            mvo.addObject("alist",alist);
            List<Product> plist=productService.selectAllProduct(n);
            mvo.addObject("plist",plist);
        }
        mvo.setViewName("index");
        return mvo;
    }

    //详情页面显示
    @RequestMapping("/ProductdetailShow")
    public ModelAndView ProductdetailShow(ModelAndView mvo,Long pid){
          System.out.println("pid="+pid);
          Product pro =productService.selectOne(pid);
          mvo.addObject("pro",pro);
          //商品品牌
          Brand bid =brandService.selectByPrimaryKey(pro.getBrandid());
          mvo.addObject("bname",bid.getName());
          //处理器
          Cpu cid=cpuService.selectByPrimaryKey(pro.getCpuunitid());
          mvo.addObject("cname",cid.getDrivename());
          mvo.addObject("cpm",cid.getParameter());
          //光驱
          Dvdrom did =dvdromService.selectByPrimaryKey(pro.getDvdromid());
          mvo.addObject("dri",did.getDrivename());
          mvo.addObject("para",did.getParameter());
          //类型
          Genre gid=genreService.selectByPrimaryKey(pro.getGenreid());
          mvo.addObject("gnmae",gid.getName());
          //显卡
          Graphics gra =graphicsService.selectByPrimaryKey(pro.getGraphicsid());
          mvo.addObject("grap",gra.getDrivename());
          mvo.addObject("graph",gra.getParameter());
          //硬盘
          Harddisk har =harddiskService.selectByPrimaryKey(pro.getHarddiskid());
          mvo.addObject("ha",har.getDrivename());
          mvo.addObject("har",har.getParameter());
          //内存
          Rom rid =romService.selectByPrimaryKey(pro.getRomid());
          mvo.addObject("rom",rid.getDrivename());
          mvo.addObject("romi",rid.getParameter());
          //系统
          Os oid =osService.selectByPrimaryKey(pro.getProductosid());
          mvo.addObject("oname",oid.getName());
          //尺寸
          Screen sid=screenService.selectByPrimaryKey(pro.getScreenid());
          mvo.addObject("scre",sid.getDrivename());
          //颜色
          Style coid=styleService.selectByPrimaryKey(pro.getProductstyleid());
          mvo.addObject("color",coid.getColor());
          //特性
          Feature fid=featureService.selectByPrimaryKey(pro.getFeatureid());
          mvo.addObject("fea",fid.getName());
          mvo.setViewName("details");
        return mvo;
    }
    @RequestMapping("/SrarchPageShow")
    public ModelAndView SrarchPageShow(ModelAndView mvo){
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

        mvo.setViewName("search");
        return mvo;
    }
}
