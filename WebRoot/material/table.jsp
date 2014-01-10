<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../css/demo.css">
</head>
<body>

	<table border="1" cellspacing="1" cellpadding="8" width="900">
		<tr align="center" bgcolor="white" height="30">
			<th>芯片编号</th>
			<th>专用标签</th>
			<th>管片编号</th>
			<th>芯片状态</th>
			<th>启用人</th>
			<th>启用时间</th>
		</tr>


		<s:iterator value="#request.list123" id="rfid">
			<tr>
				<td><s:property value="#rfid.rfidTid" />
				</td>
				<td><s:property value="#rfid.coverId" />
				</td>
				<td><s:property value="#rfid.gpId" />
				</td>
				<td><s:property value="#rfid.status" />
				</td>
				<td><s:property value="#rfid.creator" />
				</td>
				<td><s:property value="#rfid.enableTime" />
				</td>
			</tr>
		</s:iterator>


		<tr>
			<s:set name="page" value="#request.page1"></s:set>
			<s:if test="#page.hasFirst">
				<s:a href="show_RFID.action?pageNow=1">首页</s:a>
			</s:if>
			<s:if test="#page.hasPre">
				<a
					href="show_RFID.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
			</s:if>
			<s:if test="#page.hasNext">
				<a target="_parent"
					href="show_RFID.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
			</s:if>
			<s:if test="#page.hasLast">
				<a
					href="show_RFID.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
			</s:if>
		</tr>

	</table>
</body>
</html>
