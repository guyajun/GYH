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
  <jsp:include page="../construct/leftmenu.jsp"></jsp:include>
  </div>
  </div>
  <div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="文件查询" style="width:auto">
		<div style="padding:10px 0 10px 10px">
	    <form action="constructsearch.action" id="ff2" method="post">
	    	<table>
	    		<tr>
					<td> 文件类型:</td><td><select name="reporttype" id="reporttype">
        <option value="1001">防水材料报告</option>
        <option value="1002">螺栓材料报告</option>
        <option value="1003">盾构推进过程记录表</option>
        <option value="1004">同步注浆记录表</option>
        <option value="1005">盾构和管片姿态报表</option>
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
