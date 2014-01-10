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
  </head>
  
  <body>
   <jsp:include page="../produce/produce_head.jsp"></jsp:include>
    <div class="box-left">
    <div  title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
  <jsp:include page="../construct/leftmenu.jsp"></jsp:include>
  </div>
  </div>
  <div style="margin:0px 0;"></div>
	<div class="easyui-panel" title="螺栓材料" style="width:auto">
		
	 
	    <table id="tt" class="easyui-datagrid"  style="width:auto;height:250px">
	    <thead>
	    <tr>
	    <th data-options="field:'id',width:100" align="center">序号</th>
	    <th data-options="field:'proId',width:100" align="center">项目编号</th>
	    <th data-options="field:'url1',width:100" align="center">管片螺栓检测报告</th>
	    <th data-options="field:'url2',width:100" align="center">盐雾实验检测报告</th>
	    </tr>
	    </thead>
	    <s:iterator  value="#request['steelsearch']" id="c2">
	    <tr>
	    <td><s:property value="#c2.id" /></td> 
	     <td><s:property value="#c2.proId" /></td>
	         <td><a href="../constructuploadfile/<s:property value="#c2.url1" />" target="_blank"><s:property value="#c2.url1" /></a></td>
	          <td><a href="../constructuploadfile/<s:property value="#c2.url2" />" target="_blank"><s:property value="#c2.url2" /></a></td>
	          </tr>
	    </s:iterator>
	</table>
	<input class="easyui-linkbutton" type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
	</div>
</body>
</html>
