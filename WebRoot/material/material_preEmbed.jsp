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
	$(function(){
		var src=$("#image").attr("src");
		if(src.length<16){
			$("#preview").style.display="";
		}
		var url=src.substring(src.lastIndexOf("/")+1,src.length);
		var reportId=src.substring(src.lastIndexOf("/")+1,src.lastIndexOf("."));
		$("#url").attr("value",url);
		$("#reportId").attr("value",reportId);
	});
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
	<div class="easyui-panel" title="请完善预埋件质量证明书信息" style="width:auto;">
		<div style="padding:20px 10px 10px 20px">
			<form id="ff1" method="post" action="preEmbed.action">
				<table height="100px">
					<tr>
						<td>预埋件类型:</td>
						<td><select id="cc" class="easyui-combobox"
							name="preEmbed.type" style="width:200px;">
								<option value="steel">钢筋</option>
								<option value="concrete">混凝土</option>
						</select>
						</td>
						<td>开始使用日期:</td>
						<td><input class="easyui-datebox" style="width:200px;"
							name="preEmbed.useStartTime"></input></td>
					</tr>
					<tr>
						<td>进货日期:</td>
						<td><input class="easyui-datebox" style="width:200px;"
							name="preEmbed.purchaseTime"></input></td>
						<td>使用完成日期:</td>
						<td><input class="easyui-datebox" style="width:200px;"
							name="preEmbed.useEndTime"></input></td>
					</tr>
					<tr>
						<td><input type="text" id="url" name="preEmbed.url" style="display:none"></td>
						<td><input type="text" id="reportId" name="preEmbed.reportId" style="display:none"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" id="save" value="保存以上信息"></td>
					</tr>
				</table> 
			</form>
		</div>
	</div>
	<div id="preview" class="easyui-panel" title="图片预览"
		style="width:auto;height:auto">
		<img id="image" src="../uploadfile/${request.fileName}">
	</div>
</body>
</html>

