<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/login.css" />
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
                            <p>您好！欢迎光临趣网商城&nbsp;&nbsp;登录</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row n2">
            <ul class="list-inline bg1">
                <li><a href="#">商城首页</a></li>
                <li><a href="SrarchPageShow">商品分类</a></li>
                <li><a href="#">用户中心</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
    </div>
</header>
<section>
    <div class="container s1">
        <div class="row">
            <div class="col-md-6">
                <img src="img/ads/login_ad.jpg" />
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12 hh">
                        用户登录
                    </div>
                </div>

                <form class="form-inline" method="post" action="ifLogin" >
                    <div class="row hh1">
                        <div class="col-md-2">
                            <h5>用户名</h5>
                        </div>
                        <div class="col-md-10">
                            <input class="form-control"  id="un" style="width: 235px;" type="text" name="username" placeholder="请输入用户名"/>
                            <span style="color: red;font: bold 15px/28px 黑体;"></span>
                        </div>
                    </div>
                    <div class="row hh2">
                        <div class="col-md-2">
                            <h5>密码</h5>
                        </div>
                        <div class="col-md-10">
                            <input class="form-control" id="pw" style="width: 235px;" type="password" name="password" placeholder="请输入密码"/>
                            <span style="color: red;font: bold 15px/28px 黑体;"></span>
                        </div>
                    </div>
                    <div class="row hh2">
                        <div class="col-md-2">
                            <h5>验证码</h5>
                        </div>
                        <div class="col-md-10">
                            <input class="form-control" id="code_input" style="width: 120px;" type="text" placeholder="请输入验证码"/>
                            <input id="yzm" name="yzm" type="hidden" value=""/>
                            <div id="v_container" style="width: 110px;height: 35px;"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="p">
                            <c:if test="${not empty error}">
                                ${requestScope.error}
                            </c:if>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center cc">
                            <input class="form-control" type="checkbox"/><span>记住我一周</span>
                        </div>
                    </div>
                    <div class="row hh2">
                        <div class="col-md-12 text-center">
                            <input type="submit" id="my_button" class="btn btn-default" style="background-color: #EFEFEF;width: 100px;" value="登录"/>
                        </div>
                    </div>
                </form>

                <div class="row">
                    <div class="col-md-12 text-right aa">
                        <p><a href="register.jsp">注册新账户</a>/<a href="password1.jsp">找回密码</a></p>
                    </div>
                </div>

            </div>
        </div>
    </div>
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
<script src="js/gVerify.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    $("#un").blur(function(){
        //alert(0);
        var name = $(this).val();
        var node = $(this).next();
        //alert(name);
        if(name==''){
            node.html('*用户名不能为空');
        }
    });
    $("#un").focus(function(){
        var name = $(this).val();
        var node = $(this).next();
        if(name==''){
            node.html('');
        }
    });
    $("#pw").blur(function(){
        //alert(0);
        var name = $(this).val();
        var node = $(this).next();
        //alert(name);
        if(name==''){
            node.html('*密码不能为空');
        }
    });
    $("#pw").focus(function(){
        var name = $(this).val();
        var node = $(this).next();
        if(name==''){
            node.html('');
        }
    });
    var verifyCode = new GVerify("v_container");

    document.getElementById("my_button").onclick = function(){
        var res = verifyCode.validate(document.getElementById("code_input").value);
        $("#yzm").val(res);
    }
</script>
</html>

