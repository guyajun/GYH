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
	<div class="easyui-panel" title="生产过程报告查询" style="width:auto">
		<div style="padding:10px 0 10px 10px">
	<form action="productsearch.action" id="ff2" method="post">	
		<table>
	    		<tr>
					<td > 生产工序:</td><td><select  class="easyui-validatebox" name="reporttype" style="width:130px;">
        <option value="1001">钢筋加工</option>
        <option value="1002">钢筋骨架制作</option>
        <option value="1004">混凝土浇注</option>
        <option value="1005">管片蒸养</option>
        <option value="1006">放松起吊</option>
        <option value="1007">管片水养</option>
	<!--  	<option value="1007">放置堆场</option> -->
        </select></td>
        </tr>
        <tr>
		<td>报告编号:</td>
	    			<td><input class="easyui-validatebox" type="text" name="reportId" ></input></td>
	    <!--  		<td>报告上传日期:</td>
	    			<td><input class="easyui-datebox" type="text" name="role"></input></td>
					<td>至</td>
					<td><input id="dd" class="easyui-datebox"></input></td> -->	
	    		</tr>
		<tr>
		<td>
		<div style="padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onClick="submitForm()">查询</a>
	    </div>
		</td>
		</tr>
		</table>
		</form>
	    </div>
</div>
</body>
</html>
