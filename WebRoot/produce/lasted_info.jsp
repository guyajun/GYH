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

	<div class="easyui-panel"
		style="width:950px;height:200px;padding:10px;" title="管片生产基本情况">
		<table width="650px;" border="0">
			<tr>
				<td style="font-size:200%">累计生产管片: ${request.loop}环<br /> <br />
					计划生产管片:${request.planGpCount}环</td>
				<td style="font-size:200%" align="center" width="400px;">
					累计生产占计划生产百分比： <img src="../images/003.jpg" width="200" height="120" />
				</td>
			</tr>
		</table>
	</div>

	<div class="easyui-panel"
		style="width:950px;height:200px;padding:10px;" title="西线拼装推进动态">
		<table width="650px" border="0">
			<tr>
				<td style="font-size:200%">盾构推进：${request.tunnelLoop} 环 <br />
					<br /> 拼装成环：1060 环</td>
				<td style="font-size:200%" align="center" width="400px;">
					施工成环占总环数百分比： <img src="../images/003.jpg" width="200" height="120" />
				</td>
			</tr>
		</table>
	</div>
	<div class="easyui-panel"
		style="width:950px;height:200px;padding:10px;" title="东线拼装推进动态">
		<table width="650px" border="0">
			<tr>
				<td style="font-size:200%">盾构推进： 环 <br /> <br /> 拼装成环： 环</td>
				<td style="font-size:200%" align="center" width="400px;">
					施工成环占总环数百分比： <img src="../images/003.jpg" width="200" height="120" />
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
