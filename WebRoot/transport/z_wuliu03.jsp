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
	<div class="easyui-panel" title="仓储管理" style="width:auto">
		<div style="padding:10px 0 10px 10px">
	    <form id="ff2" action="storage.action" method="post">
	    	<table>
	    		<tr>
	    		<td>专用标签:</td>
	    			<td><input class="easyui-validatebox" type="text" name="gpStorage.coverId" style="width:130px;" ></input></td>
	    		<td>堆放位置:</td>
	    			<td><input class="easyui-validatebox" type="text" name="gpStorage.storageArea" style="width:130px;" ></input></td>
	    		<td>堆放时间:</td>
					<td><input class="easyui-datebox" name="gpStorage.storageDate" style="width:130px"></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton" onClick="submitForm();">保存</a></td>
	    		</tr>
			</table>
	    </form>   
	    </div>
	 </div>
</body>
</html>
