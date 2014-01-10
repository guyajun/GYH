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
			title:"用户信息",
			url:"/GP/admin/userDataGrid.action",
			idField:'id',
			fitColumns:true,
			striped:true,
			singleSelect:true,
			
			pageList:[20,30,50],
			columns:[[
			       {field:'id',title:'序号',width:80,align:'center'}, 
                   {field:'jobnumber',title:'工号',width:80,align:'center'},     
                   {field:'name',title:'姓名',width:80,align:'center'},   
                   {field:'loginname',title:'登录名',width:80,align:'center'},   
               //    {field:'dept',title:'部门',width:80,align:'center'},  
                   {field:'phone',title:'手机',width:80,align:'center'},  
                   {field:'mail',title:'邮箱',width:110,align:'center'},  
                   {field:'creater',title:'创建人',width:80,align:'center'}, 
                   {field:'createtime',title:'创建时间',width:100,align:'center'},  
                   {field:'modifier',title:'修改人',width:80,align:'center'}, 
                   {field:'modifytime',title:'修改时间',width:100,align:'center'}
			          ]],
		    pagination:true,
			rownumbers:true,
			toolbar:[{
				text:'Add',
				iconCls:'icon-add',
				handler: handleradd	
			},'-',{
				text:'Edit',
				iconCls:'icon-edit',
				handler: getselect
			},'-',{
				text:'Delete',
				iconCls:'icon-remove',
				handler:function(){
					var user = $('#tt').datagrid('getSelected');
					if(user.jobnumber=="")
					{
						$('#tt').datagrid('deleteRow',0);
						}
					else
					{
						$.messager.confirm('删除','确认删除   '+user.loginname+'  吗？',function(c){
						if(c){
						$.ajax({
							type:'post',
							url:'/GP/admin/deluser.action',
							data:{jobNumber:user.jobnumber,id:user.id},
						//	data:"jobNumber="+user.jobnumber&"id="+user.id,
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
				text:'Refresh',
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
			url:"/GP/admin/userDataGrid.action"
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
			<form action="adduser.action" id="ff2" method="post">
				<table>
					<tr>
						<td>工 号:</td>
						<td><input type="text" name="userinfo.jobNumber"></input>
						</td>
						<td>姓 名:</td>
						<td><input type="text" name="userinfo.fullName"></input>
						</td>
						<td>登录名:</td>
						<td><input type="text" name="userinfo.loginName"></input>
						</td>
						<td>登录密码:</td>
						<td><input type="text" name="userinfo.password"></input>
						</td>
					</tr>
					<tr>
						<td>部 门</td>
						<td><select class="easyui-combobox" name="userinfo.departmentInfo.id" >
						<s:iterator value="#request.depts" id="u1">
						<option value="<s:property value="#u1.id" />"><s:property value="#u1.departmentName" /></option>
						</s:iterator>
						</select>
						</td>
						<td>手 机:</td>
						<td><input type="text" name="userinfo.cellPhone"></input>
						</td>
						<td>邮 箱:</td>
						<td><input type="text" name="userinfo.email"></input>
						</td>
						<td>角  色:</td>
						<td><select class="easyui-combobox" name="rolerefuser.roleInfo.id" >
						<s:iterator value="#request.roles" id="u2">
						<option value="<s:property value="#u2.id" />"><s:property value="#u2.roleName" /></option>
						</s:iterator>
						</select>
						</td>
					</tr>
				</table>

				<a class="easyui-linkbutton" onclick="save();">添加</a>
			</form>
		</div>
	</div>
		
		<div class="easyui-panel" id="dd2" style="width:auto; display:none;">
		<form action="edituser.action" id="ff3" method="post">
				<table>
					<tr>
						<td>请输入要编辑的工号号:</td>
						<td><input type="text" name="userinfo.jobNumber"></input></td>
						<td><a class="easyui-linkbutton" onclick="saves();">编辑</a></td>
					</tr>
				</table>
			</form>

	</div>	
	<div style="margin:10px 0;"></div>
	<div id="table">
		<ul>
		<li><table id="tt"></table></li>
		</ul>
</div>
</body>
</html>
