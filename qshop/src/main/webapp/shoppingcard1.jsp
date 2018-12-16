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
            <table id="dg" class="easyui-datagrid"  style="width:765px;height: 240px"
                   data-options="singleSelect:false,collapsible:true,url:'productpage',method:'post'">
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
            {field:'productno',title:'商品编号',width:140,align:'left',sortable:true},
            {field:'productname',title:'商品名称',width:180,align:'left',editor:'text'},
            {field:'price',title:'商品价格（RMB）',align:'left',editor:'text'},
            {field:'number',title:'数量（个/件）',align:'left',editor:'text'},
            {field:'price',title:'小计（RMB）',align:'left',editor:'text'},
            {field:'action',title:'操作',width:135,align:'center',
                formatter:function(value,row,index){
                    if(row.editing){
                        var s = '<a href="javascript:void(0)" onclick="saverow('+index+')">保存</a> ';
                        var c = '<a href="javascript:void(0)" onclick="cancelrow('+index+')">取消</a>';
                        return s+c;
                    }else {
                        var d = '<a href="javascript:void(0)" onclick="editrow('+index+')">删除</a> ';
                        return d;
                    }
                }
            }
        ]],
    });



    function editrow(index){
       // alert(111);
        $('#dg').datagrid('beginEdit', index);
    }

</script>
