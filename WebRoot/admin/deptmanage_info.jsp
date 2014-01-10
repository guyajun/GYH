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
	<div class="easyui-panel" id="dd2"  title="编辑部门信息" style="width:auto;">
  <div style="padding:10px 0 10px 10px">
			<form  action="updatedept.action" id="ff3" method="post">
			<s:iterator value="#request['deptinfo']" id="c2">
				<table>
				<tr>
				<td>部门编号:</td>
						<td><input type="text" name="deptinfo.id" value="<s:property value="#c2.id" />"  ></input>
						</td>
				</tr>
					<tr>
						<td>部门名称:</td>
						<td><input type="text" name="deptinfo.departmentName" value="<s:property value="#c2.departmentName" />"></input>
						</td>
						<td>部门描述:</td>
						<td><input type="text" name="deptinfo.departmentDescription" value="<s:property value="#c2.departmentDescription" />"></input>
						</td>
						<td>父部门编号:</td>
						<td><input type="text" name="deptinfo.parentId" value="<s:property value="#c2.parentId" />"></input>
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
