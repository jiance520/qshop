<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/8/22
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/search.css" />

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
                            <p>您好！欢迎光临趣网商城/登录</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row n2">
            <ul class="list-inline bg1">
                <li><a href="indexPageShow">商城首页</a></li>
                <li><a href="#">商品分类</a></li>
                <li><a href="user.jsp">用户中心</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
    </div>
</header>
<section>
    <div class="container s1">
        <div class="row">
            <div class="col-md-12 x1">
                您可以按商品类型搜索喜爱的宝贝
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 tiaojian">

                <div class="pinpai"><div class="title" >品牌:</div>
                    <input class="cc" type="hidden" value="brandid">
                    <ul>
                        <li value="">不限</li>
                        <c:forEach items="${blist}" var="b">
                        <li value="${b.brandid}">${b.name}</li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="jiage"><div class="title">价格:</div>
                    <input class="cc" type="hidden" name="price" value="price">
                    <ul>
                        <li value="0">不限</li>
                        <li value="1">3000元以下</li>
                        <li value="2">3000-4000元</li>
                        <li value="3">4000-5000元</li>
                        <li value="4">5000-6000元</li>
                        <li value="5">6000-8000元</li>
                        <li value="6">8000-12000元</li>
                        <li value="7">12000元以上</li>
                    </ul>
                </div>
                <div class="product"><div class="title">产品定位:</div>
                    <input class="cc" type="hidden" value="genreid"/>
                    <ul>
                        <li value="">不限</li>
                        <c:forEach items="${glist}" var="g">
                            <li value="${g.genreid}">${g.name}</li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="neicun"><div class="title">内存系列:</div>
                    <input class="cc" type="hidden" value="romid"/>
                    <ul>
                        <li value="">不限</li>
                       <c:forEach items="${rlist}" var="r">
                           <li value="${r.driveid}">${r.drivename}</li>
                       </c:forEach>
                    </ul>
                </div>
                <div class="chuliqi"><div class="title">处理器系列:</div>
                    <input class="cc" type="hidden" value="cpuunitid"/>
                    <ul>
                        <li value="">不限</li>
                       <c:forEach items="${clist}" var="cc">
                           <li value="${cc.driveid}">${cc.drivename}</li>
                       </c:forEach>
                    </ul>
                </div>
                <div class="pingmu"><div class="title">屏幕尺寸:</div>
                    <input class="cc" type="hidden" value="screenid"/>
                    <ul>
                        <li value="">不限</li>
                       <c:forEach items="${slist}" var="ss">
                           <li value="${ss.driveid}">${ss.drivename}</li>
                       </c:forEach>
                    </ul>
                </div>
                <div class="xianka"><div class="title">显卡类型:</div>
                    <input class="cc" type="hidden" value="graphicsid"/>
                    <ul>
                        <li value="">不限</li>
                        <c:forEach items="${grlist}" var="gr">
                            <li value="${gr.driveid}">${gr.drivename}</li>
                        </c:forEach>
                   </ul>
                </div>
                <div class="yuzhuang"><div class="title">预装系统:</div>
                    <input class="cc" type="hidden" value="productosid"/>
                    <ul>
                        <li value="">不限</li>
                       <c:forEach items="${olist}" var="ol">
                           <li value="${ol.osid}">${ol.name}</li>
                       </c:forEach>
                    </ul>
                </div>
                <div class="texing"><div class="title">特性:</div>
                    <input class="cc" type="hidden" value="featureid"/>
                    <ul>
                        <li value="">不限</li>
                        <c:forEach items="${flist}" var="ff">
                            <li value="${ff.featureid}">${ff.name}</li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="yanse"><div class="title">外观颜色:</div>
                    <input class="cc" type="hidden" value="productstyleid"/>
                    <ul>
                        <li value="">不限</li>
                      <c:forEach items="${tlist}" var="tt">
                          <li value="${tt.styleid}">${tt.color}</li>
                      </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <form action="SearchAction" method="post" id="tj">
                    <div id="main">

                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center an">
                <input type="button" class="btn btn-default" onclick="submitFrom()" style="background-color: #EFEFEF;width: 100px;" value="搜索"/>
            </div>
        </div>
    </div>
    <div class="container s">
        <div class="row ">
            <c:if test="not empty ${pplist}">
            <div class="col-md-12" id="ss" style="display:block" >
                <span>商品搜索结果-共有${count}条符合条件的商品</span>
            </div>
            </c:if>
        </div>
        <div class="row">
            <c:forEach items="${pplist}" var="prd">
                <div class="col-md-3 col-xs-6">
                    <div class="thumbnail">
                        <a href="ProductdetailShow?pid=${prd.productid}"><img src="${prd.oneimg}" alt=""></a>

                    </div>
                    <div class="caption">
                        <a href="ProductdetailShow?pid=${prd.productid}"><h4>${prd.productname}</h4></a>
                        <p>趣网价：<span>￥${prd.price}</span><img src="img/resources/addShopCat.png"></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    </div>
</section>
</body>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    function  submitFrom() {
          /*var ss =document.getElementById("tj");
          ss.submit();*/
        $('#tj').submit();
    }

    $(function(){
        $(".tiaojian li").click(function(){
            var val=$(this).text();
            var b=$(this).val();
            var title=$(this).parent().parent().find(".title").text();
            var a =$(this).parent().parent().find(".cc").val();
            var ishas=false;
            //查找标示是否已经有了
            $("#main .tj_title").each(function(i,obj){
                var each_title=$(obj).text();
                if(each_title==title){//此标题已经存在
                    ishas=true;
                    $(obj).next().text(val);
                }
            });
            if(!ishas){
                var msg="<div class=tj><span class=tj_title name='title'>"+title+"</span><input type='hidden' name='"+a+"' value='"+b+"' /><span >"+val+"</span><span class=del>X</span></div>";
                $("#main").append(msg);
                $(".del").unbind("click").bind("click",function(){
                    $(this).parent().remove();
                });
            }
        });
    });
</script>
</html>


