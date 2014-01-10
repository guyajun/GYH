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
	<div class="easyui-panel" title="检验检测报告管理" style="width:auto">
		<div style="padding:10px 0 10px 10px">
	    <form action="checksearch.action" id="ff2" method="post">
	    	<table>
	    		<tr>
					<td > 检测类型:</td><td><select name="reporttype" id="reporttype">
        <option value="1001">混凝土抗压检测</option>
        <option value="1002">混凝土抗渗检测</option>
        <option value="1003">钢筋骨架半成品抽查</option>
        <option value="1004">钢模质量检查</option>
        <option value="1005">外观及尺寸偏差检查</option>
        <option value="1006">水平拼装检查</option>
        <option value="1007">管片检漏</option>
        </select></td>
        </tr>
        <tr>
	    <td>报告编号:</td>
	    			<td><input class="easyui-validatebox" type="text" name="reportId" ></input></td>
	    </tr>
		</table>
		<table>
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
