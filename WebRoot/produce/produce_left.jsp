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
  
		<ul class="easyui-tree" >
		<s:iterator value="#request['menus']" id="c2">
			<s:if test="#c2.functionInfo.id == 0">
	<s:if test="#c2.id == 7">
			<li data-options="state:'closed'">
	</s:if>
	<s:else>
			<s:if test="#c2.id == 5">
			<li data-options="state:'closed'">
			</s:if>
			<s:else>
		<li>
		</s:else>
		</s:else>
				<span><s:property value="#c2.functionName" /></span>
					<ul>
					<s:iterator value="#request['menus']" id="c3">
			<s:if test="#c3.functionInfo.id == #c2.id">
				<li>
					<a href="<s:property value="#c3.menuUrl"/>"><s:property value="#c3.functionName" /> </a>
				</li>
					</s:if>
			</s:iterator>
			</ul>
			</li>
			</s:if>
			</s:iterator>	
				</ul>
  </body>
</html>
