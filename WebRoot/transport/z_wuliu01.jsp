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
	function submitForm()
	{
	$('#ff2').submit();
	}
	</script>
	<script type="text/javascript">
	function tf() {
		var tf = document.getElementById("test123");
		var gyj = document.getElementById("hi");
		gyj.value = tf.value;
	}
</script>
  </head>
  
  <body>
   <jsp:include page="../produce/produce_head.jsp"></jsp:include>
    <div class="box-left">
    <div  title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
  <ul class="easyui-tree">
  <s:action name="testMenu" executeResult="true" />
  </ul>
  </div>
  </div>
  <div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="出厂管理" style="width:auto">
		<div style="padding:10px 0 10px 10px">
	    <form id="ff2" action="outgp.action" method="post">
	    	<table>
	    		<tr>
	    		<td>报告编号:</td>
	    		<td><input class="easyui-validatebox" id="test123" type="text" name="gpQuality.ReportId" style="width:130px;" onchange="tf()">
	    		</td>
	    		</tr>
			</table>
	    </form>
	     <s:form action="upload.action" method="post"
					enctype="multipart/form-data">
					<input id="hi" name="url" style="width:150px;" type="hidden" />
					<s:file name="upload" label="上传的文件"></s:file>
					<s:submit value="上传"></s:submit>
				</s:form>
		<form  id="ff3">       
<div style="padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onClick="submitForm()">保存</a>
	    </div>
</form>      
	    </div>
	</div>
	
</body>
</html>
