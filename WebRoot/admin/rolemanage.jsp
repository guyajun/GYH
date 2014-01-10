<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<title>管片生产管理信息系统</title>
<link href="../css/produce.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../css/demo.css">
<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript">
	function save() {
		$('#ff2').submit();
	}
	function del() {
		$('#ff3').submit();
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
	<div style="margin:0px 0;"></div>
	<div style="margin:0px 0;"></div>
	<div class="easyui-panel" title="添加角色" style="width:auto;">
		<div style="padding:10px 0 10px 10px">
			<form action="addrole.action" id="ff2" method="post">
				<table>
					<tr>
						<td>角色名称:</td>
						<td><input type="text" name="roleinfo.roleName"></input>
						</td>
						<td>角色描述:</td>
						<td><input type="text" name="roleinfo.roleDescription"></input>
						</td>
						<td><a class="easyui-linkbutton" onclick="save();">保存</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="easyui-panel" title="删除角色" style="width:auto;">
		<div style="padding:10px 0 10px 10px">
			<form action="deleterole.action" id="ff3" method="post">
				<table>
					<tr>
						<td>角色编号:</td>
						<td><input type="text" name="roleinfo.id"></input>
						</td>
						<td><a class="easyui-linkbutton" onclick="del();">删除</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div style="margin:10px 0;"></div>
	<table class="easyui-datagrid" title="角色信息"
		style="width:auto;height:250px">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:60">角色编号</th>
				<th data-options="field:'productid',width:60">角色名称</th>
				<th data-options="field:'listprice',width:80,align:'center'">角色描述</th>
				<th data-options="field:'unitcost',width:80,align:'center'">创建人</th>
				<th data-options="field:'attr1',width:100,align:'center'">创建时间</th>
			</tr>
		</thead>
	</table>

</body>
</html>
