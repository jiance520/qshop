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
    <link rel="stylesheet" href="css/shopping.css" />
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
                        <img src="img/resources/cartnav-step2.gif" />
                    </div>
                    <div class="col-md-3 t1">

                    </div>
                    <div class="col-md-2 t2">
                        <img src="img/resources/cartnav-cart.gif" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 hh">
                配送信息
            </div>
        </div>
        <form class="form-inline" action="newOrder" method="post">
            <div class="row hh1">
                <div class="col-md-2 ">
                    <h5>配送至</h5>
                </div>
                <div class="col-md-10 lh">
                    <div data-toggle="distpicker">
                        <div class="form-group">
                            <label class="sr-only" for="province1">Province</label>
                            <select class="form-control" id="province1" name="postaddr"></select>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="city1">City</label>
                            <select class="form-control" id="city1" name="postaddr"></select>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="district1">District</label>
                            <select class="form-control" id="district1" name="postaddr"></select>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row hh1">
                <div class="col-md-2">
                    <h5>收货人姓名*</h5>
                </div>
                <div class="col-md-10">
                    <input class="form-control" style="width: 480px;" type="text" name="postname" placeholder="请输入收货人姓名"/>
                </div>
            </div>
            <div class="row hh1">
                <div class="col-md-2">
                    <h5>收货人手机*</h5>
                </div>
                <div class="col-md-10">
                    <input class="form-control" style="width: 480px;" type="text" name="postphone" placeholder="请输入一个联系电话"/>
                </div>
            </div>
            <div class="row hh1">
                <div class="col-md-2">
                    <h5>是否保存地址</h5>
                </div>
                <div class="col-md-10 fc">
                    <input class="form-control" type="checkbox" ><span>将该地址设置为我的默认收货地址</span>
                </div>
            </div>
            <div class="row hh1">
                <div class="col-md-2">
                    <h5>订单附言</h5>
                </div>
                <div class="col-md-10">
                    <input class="form-control" style="width: 480px;" type="text" placeholder="备注信息"/>
                </div>
            </div>
        <div class="row">
            <div class="col-md-12 hh2">
                配送方式*
            </div>
        </div>
        <c:forEach var="e" items="${elist}">
            <div class="row cc">
                <div class="col-md-2 y1">
                    <input type="radio" name="express" value="${e.name}">${e.name}
                </div>
                <div class="col-md-10 x">
                    运费：￥${e.price}
                </div>
            </div>
        </c:forEach>
        <div class="row">
            <div class="col-md-12 hh3">
                支付方式*
            </div>
        </div>
        <div class="row cc">
            <div class="col-md-3 y1">
                <input type="radio" name="paytype" value="支付宝">支付宝
            </div>
        </div>
        <div class="row cc">
            <div class="col-md-3 y1">
                <input type="radio" name="paytype" value="汇款-中国工商银行">汇款-中国工商银行
            </div>
        </div>
        <div class="row cc">
            <div class="col-md-3 y1">
                <input type="radio" name="paytype" value="汇款-中国建设银行">汇款-中国建设银行
            </div>
        </div>
        <div class="row cc">
            <div class="col-md-3 y1">
                <input type="radio" name="paytype" value="汇款-中国农业银行">汇款-中国农业银行
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 hh4">
                商品列表
            </div>
        </div>
        <div class="row cc">
            <div class="col-md-12 l">
                <div>
                    <table id="dg" class="easyui-datagrid"  style="width:820px;margin-bottom: 20px"
                           data-options="singleSelect:false,collapsible:true,url:'productpage',method:'post'">
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-right hh5">
                <hr />
                <input type="image" src="img/resources/btn-confirm.gif">
                <hr />
            </div>
        </div>
        </form>
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
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/distpicker.data.js"></script>
<script src="js/distpicker.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript">
    $('#dg').datagrid({
        columns:[[
            {field:'productno',title:'商品编号',width:250,align:'left',sortable:true},
            {field:'productname',title:'商品名称',width:200,align:'left',editor:'text'},
            {field:'price',title:'商品价格（RMB）',width:150,align:'left',editor:'text'},
            {field:'number',title:'数量（个/件）',width:130,align:'left',editor:'text'},
            {field:'price',title:'小计（RMB）',width:120,align:'left',editor:'text'}

        ]],
    });
</script>
</html>
