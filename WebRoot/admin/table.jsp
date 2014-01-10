<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head> 
  <link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
  </head>
  
  <body>
		 <table  border="1" cellspacing="1" cellpadding="8" width="900">
  		<tr align="center" bgcolor="white" height="30" >
  			<th>项目名称</th><th>父项目名称</th><th>项目经理</th><th>生产单位</th><th>施工单位</th><th>详细</th><th>操作</th>		
  		</tr>
  		
  		
  		
  		
  		<s:iterator value="#request.list" id="proInfo">
  		<tr height="30">
			<td><s:property value="#proInfo.proName"/></td>
			<td><s:property value="#proInfo.proInfo.proName"/></td>
			<td><s:property value="#proInfo.directorId"/></td>
			<td><s:property value="#proInfo.produceUnit"/></td>			
			<td><s:property value="#proInfo.constructUnit"/></td>		
			<td><a target="_parent"  href="findProInfo.action?proInfo.id=<s:property value="#proInfo.id"/>">详细信息(可修改)</a> </td>	
			
			<td> <a target="_parent"  href="deleteProInfo.action?proInfo.id=<s:property value="#proInfo.id"/>" onClick="if(!confirm('删除该项目将删除其所有子项目，确定删除吗？'))return false;else return true;">删除</a> </td>		
		</tr>		
		</s:iterator>
		
		
		<tr>
			<s:set name="page" value="#request.page"></s:set>
  				<s:if test="#page.hasFirst">
				<s:a target="_parent" href="show_project.action?pageNow=1">首页</s:a>
				</s:if>
				<s:if test="#page.hasPre">
					<a target="_parent" href="show_project.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a target="_parent" href="show_project.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a target="_parent" href="show_project.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
				</s:if>
		</tr>
		
  	</table>
  </body>
</html>
