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
  <div style="margin:0px 0;"></div>
	<div class="easyui-panel" title="外观及尺寸偏差检查" style="width:auto">
		
	 
	    <table id="tt" class="easyui-datagrid"  style="width:auto;height:250px">
	    <thead>
	    <tr>
	    <th data-options="field:'id',width:100" align="center">序号</th>
	    <th data-options="field:'reportId',width:100" align="center">报告编号</th>
	    <th data-options="field:'startNum',width:100" align="center">起始环号</th>
	    <th data-options="field:'endNum',width:100" align="center">终止环号</th>
	    <th data-options="field:'checkWorker',width:100" align="center">质检员</th>
	    <th data-options="field:'checkMonitor',width:100" align="center">质检班长</th>
	    <th data-options="field:'qualityWorker',width:100" align="center">质量员</th>
	    <th data-options="field:'checkTime',width:100" align="center">检查时间</th>
	    <th data-options="field:'url',width:200" align="center">文件地址</th>
	    </tr>
	    </thead>
	    <s:iterator  value="#request['steelsearch']" id="c2">
	    <tr>
	    <td><s:property value="#c2.id" /></td> 
	     <td><s:property value="#c2.reportId" /></td>
	        <td><s:property value="#c2.startNum" /></td>
	         <td><s:property value="#c2.endNum" /></td>
	          <td><s:property value="#c2.checkWorker" /></td>
	          <td><s:property value="#c2.checkMonitor" /></td>
	          <td><s:property value="#c2.qualityWorker" /></td>
	          <td><s:property value="#c2.checkTime" /></td>
	           <td><a href="../uploadfile/<s:property value="#c2.url" />" target="_blank"><s:property value="#c2.url" /> </a></td>
	          </tr>
	    </s:iterator>
	</table>
	<input class="easyui-linkbutton" type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
	</div>
</body>
</html>
