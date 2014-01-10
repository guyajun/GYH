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
function save()
{

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
	<div style="margin:10px 0;"></div>
	<div class="easyui-panel" id="dd2"  title="编辑用户信息" style="width:auto;">
  <div style="padding:10px 0 10px 10px">
			<form  action="updateuser.action" id="ff3" method="post">
			<s:iterator value="#request['userinfo']" id="c2">
				<table>
					<tr>
						
						<td>姓 名:</td>
						<td><input type="text" name="userinfo.fullName" value="<s:property value="#c2.fullName" />"></input>
						</td>
						<td>登录名:</td>
						<td><input type="text" name="userinfo.loginName" value="<s:property value="#c2.loginName" />"></input>
						</td>
						<td>登录密码:</td>
						<td><input type="text" name="userinfo.password" value="<s:property value="#c2.password" />"></input>
						</td>
					</tr>

					<tr>
						<td>部 门</td>
						<td>
					<!--	<input type="text" name="userinfo.departmentInfo.id" value="<s:property value="#c2.departmentInfo.departmentName" />"></input> -->
						<select class="easyui-combobox" name="userinfo.departmentInfo.id" >
						<s:iterator value="#request.depts" id="u1">
						<option value="<s:property value="#u1.id" />"><s:property value="#u1.departmentName" /></option>
						</s:iterator>
						</select> 
						</td>
						<td>手 机:</td>
						<td><input type="text" name="userinfo.cellPhone" value="<s:property value="#c2.cellPhone" />"></input>
						</td>
						<td>角  色:</td>
						<td style="width:300">
					<!--	<input type="text" name="userinfo.roleInfo.id" value="<s:property value="#c2.roleInfo.roleName" />"></input> -->
						<select class="easyui-combobox" name="userinfo.roleInfo.id">
						<s:iterator value="#request.roles" id="u2">
						<option value="<s:property value="#u2.id" />"><s:property value="#u2.roleName" /></option>
						</s:iterator>
						</select>
						</td>
					</tr>
				</table>
</s:iterator>
			</form>
			<br />
				<a class="easyui-linkbutton" onclick="save();">保存修改</a>
			<a class="easyui-linkbutton" onclick="javascript:history.go(-1)">返回</a>
		
		</div>
		</div>
  </body>
</html>
