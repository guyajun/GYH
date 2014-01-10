<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
  <title>管片生产管理信息系统</title>
   <link href="css/produce.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="css/demo.css"/>
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript">	
		function query1(){
			$('#query').submit();
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
	<div id="tt" class="easyui-panel" style="auto;height:768px; padding:0px;">
		<div class="easyui-tabs" style="width:auto;">
		<div title="芯片浏览查询">
		<form id="query" method="post" action="queryRFID.action">
		  <table border="0">
				<tr>
					  <td>请输入专用标签或管片编号查询</td>
					  <td>
						   <input id="cc" class="easyui-validatebox" name="str" style="width:250px;"/>			
					  </td>
					  <td>
						   <a href="javascript:void(0)" class="easyui-linkbutton" onclick="query1();">查询</a>      
					  </td>
				</tr>
		  </table>
		</form>	
	
		<div class="easyui-panel" title="查询结果">
	    <table id="tt" class="easyui-datagrid"  style="width:auto;height:250px">
		    <thead>
			    <tr>
				    <th data-options="field:'rfidTid',width:250" align="center">芯片编号</th>
				    <th data-options="field:'coverId',width:100" align="center">专用标签</th>
				    <th data-options="field:'gpId',width:250" align="center">管片编号</th>
				    <th data-options="field:'status',width:100" align="center">状态</th>
				    <th data-options="field:'creator',width:100" align="center">扫描人</th>
				    <th data-options="field:'enableTime',width:100" align="center">芯片启用时间</th>
			    </tr>
		    </thead>
		    <s:iterator  value="#request.rfidRefGp3" id="c2">
		    <tr>
			    <td width="250px"><s:property value="#c2.rfidTid" /></td> 
			     <td><s:property value="#c2.coverId" /></td>
			      <td width="250px"><s:property value="#c2.gpId" /></td>
			       <td><s:property value="#c2.status" /></td>		 
			         <td><s:property value="#c2.creator" /></td>
			          <td><s:property value="#c2.enableTime" /></td>		        
		    </tr>
		    </s:iterator>
	    
	</table>
	</div>
	</div>
	</div>
</div>
	  
</body>
</html>
