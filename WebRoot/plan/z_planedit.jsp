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
<script type="text/javascript">
	function save() {
		$('#ff2').submit();
	}
	function saves()
	{
	$('#ff3').submit();
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
			title:"计划信息",
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
			toolbar:[{
				text:'编辑',
				iconCls:'icon-edit',
				handler: getselect
			},'-',{
				text:'删除',
				iconCls:'icon-remove',
				handler:function(){
					var user = $('#tt').datagrid('getSelected');
					if(user.id=="")
					{
						$('#tt').datagrid('deleteRow',0);
						}
					else
					{
						$.messager.confirm('删除','确认删除   '+user.id+'  吗？',function(c){
						if(c){
						$.ajax({
							type:'post',
							url:'/GP/plan/delplan.action',
							data:{id:user.id},
							dataType:'text',
							success: function(data){
								var selectedrowid = $('#tt').datagrid('getSelected');
								$('#tt').datagrid('deleteRow',$('#tt').datagrid('getRowIndex',selectedrowid));
								$.messager.alert('确认','删除成功!');
								$('#tt').datagrid('acceptChanges');
								$('#tt').datagrid('selectRow',0);
								usersrefresh();
							}
						});
						}
					});
					}
				}	
			},'-',{
				text:'刷新',
				iconCls:'icon-reload',
				handler:function(){
					usersrefresh();
				}
			}
			],
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
<script>
function cleardata(){
			$('#ff2').form('clear');
			$('#dd2').div('clear');
		}
		function submitForm(){
		var s1=document.getElementById("ss1").value;
		
		var s2=document.getElementById("ss2").value;
		if(s2>s1)
		{
		$('#ff2').submit();
		$('#ff2').form('clear');
		}
		else
		{alert("终止环号必须大于起始环号");}
		}
</script>
</head>
  <body>
   <jsp:include page="../produce/produce_head.jsp"></jsp:include>
	<div class="box-left">
		<div title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
			<ul class="easyui-tree">
				<s:action name="testMenu" executeResult="true" />
			</ul>
		</div>
	</div>
  <div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="计划创建" style="width:auto">
		<div  id="dd2" style="padding:10px 0 10px 10px">
	    <form action="addplan.action" id="ff2" method="post">
	    	<table>
	    		<tr>
	    			<td>开始时间:</td>
	    			<td><select class="easyui-datebox"  name="plan.startTime" style="width:130px;"></select></td>
					<td>结束时间:</td>
	    			<td><select class="easyui-datebox"  name="plan.endTime" style="width:130px;"></select></td>
					<td>起始环号:</td>
	    			<td><input id="ss1" class="easyui-validatebox" type="text" name="plan.startNum"style="width:130px;"></td>
					<td>终止环号:</td>
	    			<td><input id="ss2" class="easyui-validatebox" type="text" name="plan.endNum"style="width:130px;"></td>
	    		</tr>
	    	</table>
	    </form>
	    <br />
		<div style="padding:5px">
	    	<a  class="easyui-linkbutton" onClick="submitForm()">创建计划</a>
			<a  class="easyui-linkbutton" onClick="cleardata()">清空</a>
		<!--  	<a  class="easyui-linkbutton" onClick="getValue2()">每日计划</a> -->
	    </div>
	    </div>
	</div>
	
	<div class="easyui-panel" id="dd3" style="width:auto; display:none;">
		<form action="editplan.action" id="ff3" method="post">
				<table>
					<tr>
						<td>请输入要编辑的序 号:</td>
						<td><input type="text" name="plan.id"></input></td>
						<td><a class="easyui-linkbutton" onclick="saves();">编辑</a></td>
					</tr>
				</table>
			</form>

	</div>	
	
	<table id="tt"  title="计划编辑" style="width:auto;height:500px">
	</table>
</body>
</html>
