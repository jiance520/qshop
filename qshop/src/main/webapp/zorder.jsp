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
    <link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="css/themes/icon.css">
    <style type="text/css">

    </style>
</head>
<body>
<div class="container n2">

    <div class="row">
        <div style="height:385px; width:1010px; padding-left: 10px;">
            <table id="dg" class="easyui-datagrid"  style="width:750px;height: 240px"
                   data-options="singleSelect:false,collapsible:true,url:'order',method:'post'">
            </table>
        </div>
    </div>
</div>
</body>
</html>
<script src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script src='js/bootstrap.min.js'></script>
<script type="text/javascript">

    $('#dg').datagrid({
        columns:[[
            {field:'ordernum',title:'订单编号',align:'center',sortable:true},
            {field:'sum',title:'下单总额（RMB）',width:100,align:'center',editor:'text'},
            {field:'state',title:'订单状态',width:100,align:'center',formatter:function(value,row,index){
                if(row.state==1){
                    return "已完成";
                }else{
                    return "进行中";
                }

            },editor:'text'},
            {field:'paystate',title:'付款状态',align:'center',formatter:function(value,row,index){
                if(row.paystate==1){
                    return "已付款";
                }else{
                    return "未付款";
                }
            },editor:'text'},
            {field:'orderstateid',title:'发货状态',align:'center',formatter:function(value,row,index){
                if(row.orderstateid == 61){
                    return "已收货";
                }else if(row.orderstateid == 1){
                    return "未发货";
                }else if(row.orderstateid == 2){
                    return "已发货";
                }else if(row.orderstateid == 3){
                    return "已退货";
                }else if(row.orderstateid == 4){
                    return "已作废";
                }
            },editor:'text'},
            {field:'expressid',title:'配送方式',align:'center',formatter:function(value,row,index){
                if(row.expressid == 1){
                    return "顺丰快递";
                }else if(row.expressid == 2){
                    return "中国邮政EMS";
                }else if(row.expressid == 3){
                    return "申通快递";
                }else if(row.expressid == 4){
                    return "圆通快递";
                }
            },editor:'text'},
            {field:'paytype',title:'支付方式',align:'center',editor:'text'},
            {field:'action',title:'操作',width:150,align:'center',
                formatter:function(value,row,index){
                    if(row.editing){
                        var s = '<a href="javascript:void(0)" onclick="saverow('+index+')">保存</a> ';
                        var c = '<a href="javascript:void(0)" onclick="cancelrow('+index+')">取消</a>';
                        return s+c;
                    }else {
                        var d = '<a href="javascript:void(0)" onclick="editrow('+index+')">详情</a> ';
                        return d;
                    }
                }
            }
        ]],
    });
    function editrow(index){
        alert(111);
        $('#dg').datagrid('beginEdit', index);
    }

</script>
