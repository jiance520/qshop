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
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/order.css" />
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
				         			<p>您好！欢迎光临趣网商城&nbsp;&nbsp;<a href="login.jsp">登录</a></p>
				         	</div>
		        		</div>
		        	</div>
		        	</div>
		        </div>
		        <div class="row n2">
		        	<ul class="list-inline bg1">
				        <li><a href="#">商城首页</a></li>
				        <li><a href="#">商品分类</a></li>
				        <li><a href="#">产品评测</a></li>
				        <li><a href="#">商城资讯</a></li>
				        <li><a href="#">用户中心</a></li>
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
		        			<div class="col-md-12 d1">
		        		  <p>密码找回成功！您的登录密码是：${requestScope.vip.password}，感谢您对趣网的支持。 </p>
		        		  </div>
		        		</div>
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
</html>
