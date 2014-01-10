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
<script>
function check(){
var value =  document.getElementById("reportId").value;
var file = document .getElementById("upload").value;
if(value.length > 0 && file.length > 0){
$("#ff1").submit();
}else if(file.length > 0){
alert("请输入报告编号");
}else{
alert("请选择上传文件");
}
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
	<div class="easyui-panel" title="预埋件质量证明书" style="width:auto;">
		<div style="padding:20px 20px 20px 20px">
			<form id="ff1" method="post" action="uploadPreEmbed"
				enctype="multipart/form-data">
				<table height="100px">
					<tr>
						<td>上传的文件：</td>
						<td><input type="file" id="upload" name="upload"></td>
					</tr>
					<tr>
						<td>报表编号：</td>
						<td><input type="text" id="reportId" name="reportId"></td>						
					</tr>
					<tr>
						<td><a class="easyui-linkbutton" onclick="check();">上传文件</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>

