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
						<td>角  色:</td>
						<td><select class="easyui-combobox" name="userinfo.roleInfo.id" >
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
						<td>请输入要编辑的序号:</td>
						<td><input type="text" name="userinfo.id"></input></td>
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
				<th data-options="field:'id',width:80,align:'center'">序号</th>
		<!--	<th data-options="field:'jobnumber',width:80,align:'center'">工号</th>    -->
				<th data-options="field:'name',width:80,align:'center'">姓名</th>
				<th data-options="field:'loginname',width:80,align:'center'">登录名</th>
				<th data-options="field:'dept',width:80,align:'center'">部门</th>
				<th data-options="field:'role',width:80,align:'center'">角色</th>
				<th data-options="field:'phone',width:80,align:'center'">手机</th>
		<!--	<th data-options="field:'mail',width:80,align:'center'">邮箱</th> -->
<!-- 				<th data-options="field:'creater',width:80,align:'center'">创建人</th> -->
				<th data-options="field:'createtime',width:100,align:'center'">创建时间</th>
<!-- 				<th data-options="field:'modifier',width:80,align:'center'">修改人</th> -->
				<th data-options="field:'modifytime',width:80,align:'center'">修改时间</th>
			</tr>
		</thead>			
		</table></li>
		</ul>
</div>
</body>
</html>
