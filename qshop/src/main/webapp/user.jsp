
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/user.css" />
    <link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="css/themes/icon.css">
</head>
<body>
<div id="main">
    <div id="cc" class="easyui-layout" style="width:1105px;height:600px;">
        <div data-options="region:'north',split:true" style="height:159px;border: 1px solid white;">
            <div class="n">
                <ul>
                    <li><img src="img/resources/logo.png"></li>
                    <li>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="输入关键字搜索喜爱的商品" style="border:2px solid #FF0000 ;">
                            <span class="input-group-addon" style="background-color: #FF9900;border:2px solid #FF0000;border-left:none ; ">
		            	搜索
		        		</span>
                        </div>
                    </li>
                    <li>
                        <p><img src="img/resources/support.png"></p>
                        <p>您好！欢迎光临趣网商城/登录</p>
                    </li>
                </ul>
            </div>
            <div>
                <ul class="n1">
                    <li><a href="indexPageShow">商城首页</a></li>
                    <li><a href="SrarchPageShow">商品分类</a></li>
                    <li><a href="#">用户中心</a></li>
                    <li><a href="#">帮助</a></li>
                </ul>
            </div>
        </div>
        <div data-options="region:'south'"style="height:100px;border: 1px solid white;">
            <div class="y">
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
            </div>
            <div class="y">
                <ul class="list-inline l3">
                    <li>Copyright&copy;2013趣网</li>
                    <span>|</span>
                    <li>Develop by Caze.</li>
                    <span>|</span>
                    <li>本系统仅供测试，请勿用于商业用途</li>
                </ul>


            </div>

        </div>
        <div data-options="region:'west'" style="width:235px;border: 1px solid white;">
            <div class="la">
                <ul class="list-group ll">
                    <li class="list-group-item">
                        <div class="row ">
                            <div class="col-md-4">
                                <img src="img/resources/user_head.png"/>
                            </div>
                            <div class="col-md-8">
                                <p>${sessionScope.userinfo.name}</p>
                                <p>积分：0/铜牌会员</p>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item"><a href="zorder.jsp" target="mainFram">我的订单</a></li>
                    <li class="list-group-item"><a href="shoppingcard1.jsp" target="mainFram">购物车</a></li>
                    <li class="list-group-item"><a href="PersonalInformation.jsp"  target="mainFram">个人信息</a></li>
                    <li class="list-group-item"><a href="login.jsp" class="aa">注销</a></li>
                </ul>
            </div>
        </div>
        <div data-options="region:'center'" style="padding:5px;border: 1px solid white;height:700px;">
            <iframe name="mainFram" width="800px" height="350px" frameborder="0" scrolling="no" src="zorder.jsp" ></iframe>
        </div>
    </div>
</div>
</body>

<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript">
    $(function(){
        $(".aa").click(function () {
            var text = this.href;
        })
    })

</script>
</html>

