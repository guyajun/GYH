<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
  <title>管片生产管理信息系统</title>
   <link href="../css/produce.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
	<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
	<script>
function submitForm(){
        var begin=document.getElementById('datestart');
        var end=document.getElementById('dateend');
        if(begin != null && end != null)
        {
		$('#ff2').submit();
		$('#ff2').form('clear');
		}
		else
		{
		alert('请输入完整');
		}
		}
</script>
	<script type="text/javascript">
var frameheight;
var ALL;
$(function(){
	loadUserTable();
});
	function loadUserTable()
	{
		var lastIndex;
		$('#tt').datagrid({
			url:"/GP/admin/planDataGrid.action",
			idField:'id',
			fitColumns:true,
			striped:true,
			singleSelect:true,
			
			pageList:[20,30,50],
			columns:[[
			  {field:'id',title:'序号',width:80,align:'center'},
                   {field:'starttime',title:'计划开始时间',width:80,align:'center'},     
                   {field:'endtime',title:'计划结束时间',width:80,align:'center'},   
                   {field:'startnum',title:'开始环号',width:80,align:'center'},   
                   {field:'endnum',title:'终止环号',width:80,align:'center'},
                  // {field:'total',title:'总环数',width:80,align:'center'},
                   {field:'creater',title:'创建人',width:80,align:'center'}, 
                   {field:'createtime',title:'创建时间',width:80,align:'center'},  
                   {field:'modifier',title:'修改人',width:80,align:'center'}, 
                   {field:'modifytime',title:'修改时间',width:80,align:'center'}
			          ]],
		    pagination:true,
			rownumbers:true,
		});
		$('#tt').datagrid('getPager').pagination({
			displayMsg:'当前显示从{from}到{to}共{total}记录 '
		});
	}
	var flag = false;
	function getselect()
	{
	document.getElementById('dd3').style.display="";
	}
	function usersrefresh()
	{
		$('#tt').datagrid({
			url:"/GP/admin/planDataGrid.action"
		});
	}
</script>
  </head>
  
  <body>
   <jsp:include page="../produce/produce_head.jsp"></jsp:include>
    <div class="box-left">
    <div  title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
  <ul class="easyui-tree">
  <s:action name="testMenu" executeResult="true" />
  </ul>
  </div>
  </div>
  <div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="计划查询" style="width:auto">
		<div style="padding:10px 0 10px 10px">
	    <form action="plansearch.action" id="ff2" method="post">
	    	<table>
	    		<tr>
	    			<td>计划开始日期 从:</td>
	    			<td><input id="datestart" name="datestart" class="easyui-datebox" ></input></td>
					<td>至</td>
					<td><input id="dateend" name="dateend"class="easyui-datebox" ></input></td>
					<td><a  class="easyui-linkbutton" onClick="submitForm()">查询</a></td>
				<!--  	<td><a  class="easyui-linkbutton">每日计划</a></td> -->
	    		</tr>
	    	</table>
	    </form>
	    </div><table id="tt" class="easyui-datagrid" title="查询结果" style="width:auto;height:550px">
	</table>
	</div>
</body>
</html>
