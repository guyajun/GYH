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
function submitForm(){
alert('here');
		$('#ff2').submit();
		$('#ff2').form('clear');
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
	<div class="easyui-panel" title="混凝土配比通知单" style="width:auto">
		
	 
	    <table id="tt" class="easyui-datagrid"  style="width:auto;height:250px">
	    <thead>
	    <tr>
	    <th data-options="field:'id',width:30" align="center">序号</th>
	    <th data-options="field:'mixRatioId',width:80" align="center">配比通知单号</th>
	    <th data-options="field:'date',width:100" align="center">日期</th>
	    <th data-options="field:'url',width:100" align="center">文件地址</th>
	    </tr>
	    </thead>
	    <s:iterator  value="#request['steelquality']" id="c2">
	    <tr>
	    <td><s:property value="#c2.id" /></td> 
	     <td><s:property value="#c2.mixRatioId" /></td>
	      <td><s:property value="#c2.date" /></td>
	           <td><a href="../uploadfile/<s:property value="#c2.url" />" target="_blank"><s:property value="#c2.url" /> </a></td>
	          </tr>
	    </s:iterator>
	</table>
	<input class="easyui-linkbutton" type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
	</div>
</body>
</html>
