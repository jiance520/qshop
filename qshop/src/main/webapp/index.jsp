<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/index.css" />
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
                            <form action="indexPageShow" method="post" id="nn">
                            <div class="input-group n1">
                                    <input type="text" class="form-control" name="productname" placeholder="输入关键字搜索喜爱的商品" style="border:2px solid #FF0000 ;">
                                    <span class="input-group-addon" onclick="submitFrom()" style="background-color: #FF9900;border:2px solid #FF0000;border-left:none ; ">
		            	搜索
		        		</span>
                            </div>
                            </form>
                        </div>
                        <div class="col-md-7">
                            <img src="img/resources/support.png">
                            <c:if test="${empty sessionScope.userinfo}">
                                <p><span style="color: red;font: bold 14px/20px 黑体;">您好！欢迎光临趣网商城</span>&nbsp;&nbsp;<a href="login.jsp">登录</a>&nbsp;&nbsp;<a href="register.jsp">注册</a></p>
                            </c:if>
                            <c:if test="${not empty sessionScope.userinfo}">
                                <p><span style="color: red;font: bold 14px/20px 黑体;">${sessionScope.userinfo.name}</span>，您好！</p>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row n2">
            <ul class="list-inline bg1">
                <li><a href="indexPageShow">商城首页</a></li>
                <li><a href="SrarchPageShow">商品分类</a></li>
                <li><a href="user.jsp">用户中心</a></li>
                <li><a href="shopcartshow">购物车</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                    <div class="carousel-inner text-left" style="height: 400px;">
                        <c:forEach items="${alist}" var="advert" varStatus="advert1">
                            <c:if test="${advert1.index==0}">
                                <div class="item active">
                                    <img class="img-responsive" src="${advert.img}" >
                                </div>
                            </c:if>
                            <c:if test="${advert1.index!=0}">
                                <div class="item">
                                    <img class="img-responsive" src="${advert.img}" >
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>

                    <!--圆圈指示符-->
                    <ol class="carousel-indicators">
                        <c:forEach var="advert" items="${alist}" varStatus="advert1">
                            <c:if test="${advert1.index==0}">
                            <li data-target="#myCarousel" data-slide-to="${advert1.index}" class="active"></li>
                            </c:if>
                            <c:if test="${advert1.index!=0}">
                                <li data-target="#myCarousel" data-slide-to="${advert1.index}"></li>
                            </c:if>
                        </c:forEach>
                    </ol>
                </div>
            </div>
            <div class="col-md-4">
                <img src="img/resources/ad_right.png" />
            </div>
        </div>
    </div>
</header>
<section>
    <div class="container s">
        <div class="row">
            <div class="col-md-12 sl">
                <span>热销商品</span>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <c:forEach items="${plist}" var="prd">
            <div class="col-md-3 col-xs-6">
                <div class="thumbnail">
                    <a href="ProductdetailShow?pid=${prd.productid}"><img src="${prd.oneimg}" alt=""></a>
                </div>
                <div class="caption">
                    <a href="ProductdetailShow?pid=${prd.productid}"><h4>${prd.productname}</h4></a>
                    <p>趣网价：<span>￥${prd.price}</span><a href="ShopAction?sid=${prd.productid}"><img src="img/resources/addShopCat.png"></a></p>
                </div>
            </div>
        </c:forEach>
    </div>
    </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="row">
            <hr />
        </div>
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
                    <li><a href="http://localhost:8085/hshop/deng_web/manager.html">后台管理</a></li>
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
</html>
<script src="js/jquery-1.12.4.js"></script>
<script src='js/bootstrap.min.js'></script>
<script>
    function  submitFrom() {
        $('#nn').submit();

    }

    $('.carousel').carousel();
    //两秒钟执行一次
    $('.carousel').carousel({
        interval: 2000
    })
    $('.carousel').carousel('next');

    $('#myCarousel').on('slide.bs.carousel',function(e){
        console.log(e.relatedTarget);
        console.log(e.direction);
    });

</script>
