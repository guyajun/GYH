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
			title:"部门信息",
			url:"/GP/admin/deptDataGrid.action",
			idField:'id',
			fitColumns:true,
			striped:true,
			singleSelect:true,
			
			pageList:[20,30,50],
		//	columns:[[
        //           {field:'id',title:'部门编号',width:80,align:'center'},     
        //           {field:'deptname',title:'部门名称',width:80,align:'center'},   
        //           {field:'descrpt',title:'部门描述',width:80,align:'center'},   
       //            {field:'parentid',title:'父部门编号',width:80,align:'center'},    
       //            {field:'creator',title:'创建人',width:80,align:'center'}, 
       //            {field:'createtime',title:'创建时间',width:80,align:'center'},  
       //            {field:'modifier',title:'修改人',width:80,align:'center'}, 
       //            {field:'modifytime',title:'修改时间',width:80,align:'center'}
		//	          ]],
		    pagination:true,
			rownumbers:true,
			toolbar:[{
				text:'添加',
				iconCls:'icon-add',
				handler: handleradd	
			},'-',{
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
						$.messager.confirm('删除','确认删除   '+user.deptname+'  吗？',function(c){
						if(c){
						$.ajax({
							type:'post',
							url:'/GP/admin/deldept.action',
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
	function handleradd()
	{
	document.getElementById('dd1').style.display="";
	}
	function getselect()
	{
	document.getElementById('dd2').style.display="";
	}
	function usersrefresh()
	{
		$('#tt').datagrid({
			url:"/GP/admin/deptDataGrid.action"
		});
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
	<div class="easyui-panel" id="dd1" style="width:auto; display:none;">
		<div style="padding:10px 0 10px 10px">
			<form action="adddept.action" id="ff2" method="post">
				<table>
					<tr>
			<!--  		<td>部门编号:</td>
						<td><input type="text" name="userinfo.jobNumber"></input>
						</td>
						-->
						<td>部门名称:</td>
						<td><input type="text" name="deptinfo.departmentName"></input>
						</td>
						<td>部门描述:</td>
						<td><input type="text" name="deptinfo.departmentDescription"></input>
						</td>
						<td>父部门编号:</td>
						<td><input type="text" name="deptinfo.parentId"></input>
						</td>
					</tr>
				</table>
				<br />
				<a class="easyui-linkbutton" onclick="save();">添加</a>
			</form>
		</div>
	</div>
		
		<div class="easyui-panel" id="dd2" style="width:auto; display:none;">
		<form action="editdept.action" id="ff3" method="post">
				<table>
					<tr>
						<td>请输入要编辑的部门编号:</td>
						<td><input type="text" name="deptinfo.id"></input></td>
						<td><a class="easyui-linkbutton" onclick="saves();">编辑</a></td>
					</tr>
				</table>
			</form>

	</div>	
	<div style="margin:10px 0;"></div>
	<div id="table">
		<ul>
		<li><table id="tt">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true" ></th>
				<th data-options="field:'id',width:80,align:'center'">部门编号</th>
				<th data-options="field:'deptname',width:80,align:'center'">部门名称</th>
				<th data-options="field:'descrpt',width:80,align:'center'">部门描述</th>
				<th data-options="field:'parentid',width:80,align:'center'">父部门编号</th>
<!-- 				<th data-options="field:'creator',width:80,align:'center'">创建人</th> -->
				<th data-options="field:'createtime',width:80,align:'center'">创建时间</th>
<!-- 				<th data-options="field:'modifier',width:80,align:'center'">修改人</th> -->
				<th data-options="field:'modifytime',width:80,align:'center'">修改时间</th>
			</tr>
		</thead>
		</table></li>
		</ul>
		
		<!-- 
		columns:[[
                   {field:'id',title:'部门编号',width:80,align:'center'},     
                   {field:'deptname',title:'部门名称',width:80,align:'center'},   
                   {field:'descrpt',title:'部门描述',width:80,align:'center'},   
                   {field:'parentid',title:'父部门编号',width:80,align:'center'},    
                   {field:'creator',title:'创建人',width:80,align:'center'}, 
                   {field:'createtime',title:'创建时间',width:80,align:'center'},  
                   {field:'modifier',title:'修改人',width:80,align:'center'}, 
                   {field:'modifytime',title:'修改时间',width:80,align:'center'}
		 -->
</div>
</body>
</html>
