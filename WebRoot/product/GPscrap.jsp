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
		function scrap() {
			$('#scrap').submit();
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
	<div class="easyui-panel" title="管片报废管理" style="width:auto;">
		<div style="padding:10px 10px 10px 10px">
	    <form id="scrap" method="post" action="scrap.action">
	    <table>
	    <tr>
				<td>管片编号</td>
				<td>
					<input id="cc" class="easyui-validatebox" name="str" style="width:200px;">
				</td>
								
		</tr>
		<tr>
					
					<td>报废时间</td>
					<td>
	    				<input class="easyui-datebox" name="gpTotalInfo.scrapDate" style="width:200px">
					</td>
					<td>报废原因</td>
					<td>		
						<input class="easyui-validatebox" name="gpTotalInfo.scrapReason" style="width:200px">
					</td>
		</tr> 	
		
	    </table>
	    </form>
	   <div style="padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onClick="scrap()">保存</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onClick="clear()">清空</a>	
	    </div>

	    </div>
	</div>
</body>
</html>
