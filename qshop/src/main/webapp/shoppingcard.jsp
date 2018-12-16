<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>购物车</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/shoppingcard.css" />
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
                            <p><span style="color: red;font: bold 14px/20px 黑体;">${sessionScope.userinfo.name}</span>，您好！</p>
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
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
    </div>
</header>
<section>
    <div class="container c1">
        <div class="row ">
            <div class="col-md-12 n3">
                <div class="row">
                    <div class="col-md-7">
                        <img src="img/resources/cartnav-step1.gif" />
                    </div>
                    <div class="col-md-3 t1">

                    </div>
                    <div class="col-md-2 t2">
                        <img src="img/resources/cartnav-cart.gif" />
                    </div>
                </div>
            </div>
        </div>

        <div class="cartList" id="cartList">
            <ul>
                <li>商品图片</li>
                <li>商品信息</li>
                <li>单价</li>
                <li>数量</li>
                <li>总价</li>
                <li>操作</li>
            </ul>
            <c:forEach var="p" items="${plist}" varStatus="pp">
                <ul>
                    <li><img src="${p.oneimg}"></li>
                    <li>${p.productname}</li>
                    <li>¥<input type="text" name="price" value="${p.price}"></li>
                    <li><input type="button" name="minus" value="-" onclick="minus(${pp.index});"><input type="text" name="amount" value="${p.number}"><input type="button" name="plus" value="+" onclick="plus(${pp.index});"></li>
                    <li id="price${pp.index}">¥${p.price}</li>
                    <li><p  onclick="collection();">移入收藏</p><p><a href="deletegoods?id=${p.productid}">删除</a></p></li>
                </ul>
            </c:forEach>
            <ol>
                <li id="totalPrice">商品总计：<span></span></li>
                <li><span><a href="shoppingmes" >结 算</a></span></li>
            </ol>
        </div>
    </div>
</section>
<footer>
    <div class="container l2">
        <div class="row ">
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

<script type="text/javascript" src="js/shopping.js"></script>
<script>

</script>
</html>
