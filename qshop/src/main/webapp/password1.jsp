<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" href="css/register.css" />
	</head>
	<body>
		<header>
    <div class="container n">
    	<div class="row">
        	<div class="col-md-4">
            	<img src="img/resources/logo.png">
        	</div>
        	<div class="col-md-8 text-right">       	
    			<div class="row">   		         
		         			<img src="img/resources/support.png">
		         			<p>您好！欢迎进入趣网商城密码服务</p>
        		</div>       	
        	</div>
        </div>
    </div>
    </header>
    <section>
    	<div class="container">
    		<div class="row n1">
		        	<div class="col-md-12 text-center">
		        		<h3>密码找回</h3>
		        	</div>
		    </div>

		    <div class="row n1">
		         	<form class="form-inline f1" action="findPassword" method="post">
						<div class="row hh1">
							<div style="color: red;font: normal 15px/20px 宋体;">
								<c:if test="${not empty msg}">
									${requestScope.msg }
								</c:if>
							</div>
						</div>
		        		<div class="row hh1">
		        			<div class="col-md-2 ">
		        				<h5>用户名</h5>
		        			</div>
		        			<div class="col-md-10 ">
		        				<input class="form-control" style="width: 280px;" id="uname" type="text" name="username" placeholder="请输入用户名"/>
								<span id="dd" style="color: red;font: bold 18px/28px 黑体;"></span>
		        			</div>
		        		</div>
						<div class="row hh1">
							<div class="col-md-2">
								<h5>邮箱</h5>
							</div>
							<div class="col-md-10">
								<input class="form-control" style="width: 280px;" type="email" name="email" placeholder="请输入邮箱"/>
							</div>
						</div>
						<div class="row hh1">
							<div class="col-md-2">
								<h5>电话</h5>
							</div>
							<div class="col-md-10">
								<input class="form-control" style="width: 280px;" type="text" name="phone" placeholder="请输入电话"/>
							</div>
						</div>
						<div class="row hh1">
							<div class="col-md-2">
								<h5>验证码</h5>
							</div>
							<div class="col-md-10">
								<input class="form-control" id="code_input" id="verifyCode" style="width: 120px;" type="text" placeholder="请输入验证码"/>
								<input id="yzm" name="yzm" type="hidden" value=""/>
								<div id="v_container" style="width: 110px;height: 35px;"></div>
							</div>
						</div>
						<div class="row hh1">
							<span id="ff" style="color: red;font: bold 18px/28px 黑体;"></span>
						</div>
		        	
		        		
		        		<div class="row hh2">
		        			<div class="col-md-12 text-center">
		        				<input type="submit" id="my_button" class="btn btn-default" style="background-color: #EFEFEF;width: 100px;" value="找回密码"/>
		        			</div>
		        		</div>
		        	</form>
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
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    var verifyCode = new GVerify("v_container");

    document.getElementById("my_button").onclick = function(){
        var res = verifyCode.validate(document.getElementById("code_input").value);
        alert(res);
        $("#yzm").val(res);
    }

</script>
</html>
