<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/8/22
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/details.css" />
    <link rel="stylesheet" href="css/magnifier.css" />
</head>
<body>
<header>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <img src="img/resources/logo.png">
            </div>
            <div class="col-md-8">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="input-group n1">
                                <input type="text" class="form-control" placeholder="输入关键字搜索喜爱的商品" style="border:2px solid #FF0000 ;">
                                <span class="input-group-addon" style="background-color: #FF9900;border:2px solid #FF0000;border-left:none ; ">
				            	搜索
				        		</span>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <img src="img/resources/support.png">
                            <p>您好！欢迎光临趣网商城/<a href="login.jsp">登录</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row n2">
            <ul class="list-inline bg1">
                <li><a href="indexPageShow">商城首页</a></li>
                <li><a href="SrarchPageShow">商品分类</a></li>
                <li><a href="#">用户中心</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
    </div>
</header>
<section>
    <div class="container s1">
        <div class="row r1">
            <div class="col-md-5">
                <div class="magnifier" id="magnifier1">
                    <div class="magnifier-container">
                        <div class="images-cover"></div>
                        <!--当前图片显示容器-->
                        <div class="move-view"></div>
                        <!--跟随鼠标移动的盒子-->
                    </div>
                    <div class="magnifier-assembly">
                        <div class="magnifier-line">
                            <ul class="clearfix animation03">
                                <li>
                                    <div class="small-img">
                                        <img src="${pro.oneimg}" />
                                    </div>
                                </li>
                                <li>
                                    <div class="small-img">
                                        <img src="${pro.twoimg}" />
                                    </div>
                                </li>
                                <li>
                                    <div class="small-img">
                                        <img src="${pro.threeimg}" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--缩略图-->
                    </div>
                    <div class="magnifier-view"></div>
                    <!--经过放大的图片显示容器-->
                </div>
            </div>
            <div class="col-md-7">
                <ul class="list-group ll">
                    <li class="list-group-item">${pro.productname}</li>
                    <li class="list-group-item">商品编号：${pro.productno}</li>
                    <li class="list-group-item">趣网价：￥${pro.price}</li>
                    <li class="list-group-item">促销信息：暂无</li>
                    <li class="list-group-item">商品评价：
                        <img src="img/resources/star.png">
                        <img src="img/resources/star.png">
                        <img src="img/resources/star.png">
                        <img src="img/resources/star.png">
                        <img src="img/resources/star.png">
                    </li>
                    <li class="list-group-item">服务：由趣网商城发货并提供产品售后服务，支持货到付款。</li>
                    <form action="#" class="form-inline">
                    <li class="list-group-item">
                            <div class="form-group">
                                购买数量：
                                <input onchange="gaibian()" style="padding-left:10px;height: 25px;width: 70px"
                               type="number" name="pnum" class="sl" value="1" min="1" max="5" id="inputNum">
                            </div>
                        <input type="hidden" name="pid" value="${pro.productid}">
                    <li class="list-group-item">
                    <a href=""><img src="img/resources/btn-fastbuy.gif"></a>
                    <a href="ShopAction?sid=${pro.productid}"><img src="img/resources/btn-buy.gif"></a>
                    </li>
                    </form>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ms">
                商品描述
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <img style="width: 100%;" src="${pro.oneimg}" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ms">
                商品参数
            </div>
        </div>
        <div class="row y">
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-5 y1">
                        商品名称
                    </div>
                    <div class="col-md-7 x">
                        ${pro.productname}
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="row">
                    <div class="col-md-6 y1">
                        屏幕尺寸
                    </div>
                    <div class="col-md-6  x">
                        ${scre}
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-4 y1">
                        内存
                    </div>
                    <div class="col-md-8  x">
                        ${rom}${romi}
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-3 y1">
                        硬盘
                    </div>
                    <div class="col-md-3  x">
                        ${ha}${har}
                    </div>
                </div>
            </div>
        </div>
        <div class="row y">
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-5 y1">
                        商品品牌
                    </div>
                    <div class="col-md-7  x">
                        ${bname}
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="row">
                    <div class="col-md-6 y1">
                        机身颜色
                    </div>
                    <div class="col-md-6  x">
                        ${color}
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-4 y1">
                        显卡
                    </div>
                    <div class="col-md-8  x">
                        ${grap}${graph}
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-3 y1">
                        光驱
                    </div>
                    <div class="col-md-3  x">
                        ${dri}${para}
                    </div>
                </div>
            </div>
        </div>
        <div class="row y">
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-5 y1">
                        商品类型
                    </div>
                    <div class="col-md-7  x">
                        ${gnmae}
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="row">
                    <div class="col-md-6 y1">
                        预装系统
                    </div>
                    <div class="col-md-6  x">
                       ${oname}
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-4 y1">
                        处理器
                    </div>
                    <div class="col-md-8  x">
                        ${cname}${cpm}
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-3 y1">
                        特性
                    </div>
                    <div class="col-md-3  x">
                        ${fea}
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 y2">
                <span>服务承诺：</span>趣网商城向您保证商品均为正品行货，趣网自营商品自带机打发票，与商品一起寄送，凭质保证书及趣网商城发票，可享受全国
                联保服务，与您亲临商城选购的商品享受相同的质量保证。趣网商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 y2">
                注：因厂家会在没有任何提前通知下更改产品包装、产地或者一些附件，本公司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为
                原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 y2">
                <span>权责声明：</span>趣网商城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是趣网商城重要的经营资源，未经许可，禁止非法转载使用。
                注：本站商品信息均来自于厂商，其真实性、准确性和合法性由信息拥有者（厂商）负责。本站不提供任何保证，并不承担任何法律责任。
            </div>
        </div>
    </div>

</section>
<footer>
    <div class="container">
        <div class="row f1">
            <div class="col-md-2 col-xs-6">
                <ul class="list-group u1">
                    <li class="list-group-item " >新手上路</li>
                    <li class="list-group-item " >注册新用户</li>
                    <li class="list-group-item " >购物流程</li>
                </ul>
            </div>
            <div class="col-md-2 col-xs-6">
                <ul class="list-group u1">
                    <li class="list-group-item " >配送方式</li>
                    <li class="list-group-item " >配送范围</li>
                    <li class="list-group-item " >配送时限</li>
                    <li class="list-group-item " >配送常见问题</li>
                </ul>
            </div>
            <div class="col-md-2 col-xs-6">
                <ul class="list-group u1">
                    <li class="list-group-item " >付款方式</li>
                    <li class="list-group-item " >在线支付</li>
                    <li class="list-group-item " >货到付款</li>
                    <li class="list-group-item " >银行转账</li>
                </ul>
            </div>
            <div class="col-md-2 col-xs-6">
                <ul class="list-group u1">
                    <li class="list-group-item " >会员中心</li>
                    <li class="list-group-item " >注册会员</li>
                    <li class="list-group-item " >会员登录</li>
                </ul>
            </div>
            <div class="col-md-2 col-xs-6">
                <ul class="list-group u1">
                    <li class="list-group-item " >售后服务</li>
                    <li class="list-group-item " >退换货原则</li>
                </ul>
            </div>
            <div class="col-md-2 col-xs-6">
                <ul class="list-group">
                    <li class="list-group-item " >帮助中心</li>
                    <li class="list-group-item " >常见问题</li>
                    <li class="list-group-item " >投诉与建议</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row qq">
            <div class="col-md-12">
                <img style="width: 1168px;" src="img/resources/bottom_ad.png" />
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row l2">
            <div class="col-md-12">
                <ul class="list-inline l3">
                    <li><a href="#">关于我们</a></li>
                    <span>|</span>
                    <li><a href="#">免责声明</a></li>
                    <span>|</span>
                    <li><a href="#">合作专区</a></li>
                    <span>|</span>
                    <li><a href="#">加盟代理</a></li>
                    <span>|</span>
                    <li><a href="#">友情链接</a></li>
                    <span>|</span>
                    <li><a href="#">联系我们</a></li>
                    <span>|</span>
                    <li><a href="#">后台管理</a></li>
                </ul>
                <ul class="list-inline l3">
                    <li>Copyright&copy;2013趣网</li>
                    <span>|</span>
                    <li>Develop by Caze.</li>
                    <span>|</span>
                    <li>本系统仅供测试，请勿用于商业用途</li>
                </ul>

            </div>
        </div>

    </div>
</footer>
</body>
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/magnifier.js"></script>
<script type="text/javascript">
    $(function() {

        var magnifierConfig = {
            magnifier : "#magnifier1",//最外层的大容器
            width : 500,//承载容器宽
            height : 500,//承载容器高
            moveWidth : null,//如果设置了移动盒子的宽度，则不计算缩放比例
            zoom : 3//缩放比例
        };

        var _magnifier = magnifier(magnifierConfig);

    });

    function gaibian(){
        var all = $("#inputNum").val();
        if(all<=1){
            alert("不能再减了！");
        }else if(all==5){
            alert("限购5件！");
        }
        $(".sl").val(all);
    }
</script>
</html>
