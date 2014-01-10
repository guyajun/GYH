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
	function submitForm()
	{
	$('#ff2').submit();
	}
	</script>
	<script>
	function submitForm2()
	{
	$('#ff3').submit();
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
	<div class="easyui-panel" title="数据库同步" style="width:auto">
	<div  style="padding:10px 0 10px 0">
	<form action="synchronization.action" id="ff2">	
	目标数据库IP地址:<input type="text" name="remotip"> 端口号:<input type="text" name="port">数据库名称:<input type="text" name="database">
	<br />
	<br />	
			<a class="easyui-linkbutton" onclick="submitForm();">同步数据库</a>
		</form>
	    </div>
</div>
</body>
</html>
