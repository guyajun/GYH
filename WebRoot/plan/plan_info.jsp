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
	<div class="easyui-panel" id="dd2"  title="编辑计划信息" style="width:auto;">
  <div style="padding:10px 0 10px 10px">
			<form  action="updateplan.action" id="ff3" method="post">
			<s:iterator value="#request['planinfo']" id="c2">
				<table>
				<tr>
				<td>计划编号:</td>
						<td><input type="text" name="plan.id" value="<s:property value="#c2.id" />"  ></input>
						</td>
				</tr>
					<tr>
						<td>计划开始时间:</td>
						<td>
						<select class="easyui-datebox"  name="plan.startTime" style="width:130px;">
						<option><s:property value="#c2.startTime" /></option>
						</select>
						</td>
						<td>计划结束时间:</td>
						<td>
						<select class="easyui-datebox"  name="plan.endTime" style="width:130px;">
						<option><s:property value="#c2.endTime" /></option>
						</select>
						</td>
						<td>起始环数 :</td>
						<td><input type="text" id="ss1" name="plan.startNum" value="<s:property value="#c2.startNum" />"></input>
						</td>
						<td>终止环数 :</td>
						<td><input type="text" id="ss2" name="plan.endNum" value="<s:property value="#c2.endNum" />"></input>
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
