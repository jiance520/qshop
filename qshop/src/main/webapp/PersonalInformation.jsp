<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>趣网商城-个人信息</title>


    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <style>
        .hh1{
            width: 440px;
            margin-left: 40px;
            margin-top: 5px;
            margin-bottom: 5px;

        }
        .hh2{
            width: 460px;
            margin-left: 10px;
            margin-top:15px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body  >

<div class="container">
    <div class="row">
    <form class="form-inline" action="" method="post" style="border: 1px solid red; width: 400px;">
        <div class="row hh1">
            <div class="col-md-2">
                <h5>用户名</h5>
            </div>
            <div class="col-md-10">
                <input class="form-control" style="width: 200px;" type="text" value="${sessionScope.userinfo.name}"/>
            </div>
        </div>
        <div class="row hh1">
            <div class="col-md-2">
                <h5>邮箱</h5>
            </div>
            <div class="col-md-10">
                <input class="form-control" style="width: 200px;" type="email" name="email" value="${sessionScope.userinfo.email}"/>
            </div>
        </div>
        <div class="row hh1">
            <div class="col-md-2">
                <h5>电话</h5>
            </div>
            <div class="col-md-10">
                <input class="form-control" style="width: 200px;" type="text" name="phone" value="${sessionScope.userinfo.phone}"/>
            </div>
        </div>
        <div class="row hh1">
            <div class="col-md-2">
                <h5>地址</h5>
            </div>
            <div class="col-md-10">
                <input class="form-control" style="width: 200px;" type="text" name="email" value="${sessionScope.userinfo.address}"/>
            </div>
        </div>
        <div class="row hh2">
            <div class="col-md-12 text-center">
                <input type="submit" id="my_button" class="btn btn-default" style="background-color: #EFEFEF;width: 100px;" value="修改"/>
            </div>
        </div>
    </form>
    </div>
</div>
</body>
</html>
