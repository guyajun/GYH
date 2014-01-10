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
   <div data-options="region:'north',split:true" title="" style=" background:url(../images/topbg.jpg) top left repeat-x;height:108px;">		
	<div style=" background:url(../images/topbanner_hm.jpg) top left no-repeat; height:108px; width:1000px; float:none;">
	</div>
		<div style="width:300px; position:absolute; right:22px; top:60px; line-heigh:20px; color:#FFFFFF; font-size:14px; line-height:20px;">
						
						当前项目：&nbsp虹梅南路--金海路
						<p style="color:#FFFFFF;">
						欢迎您:
				<font color="#ff0000"><%=session.getAttribute("fullName")%></font>&nbsp;
				<font  id="txt"></font>
				&nbsp;
				<a href="http://localhost:8080/GP/"><font color="FFFFFF">退出</font></a>
				&nbsp;
				<a href="javascript:self.close()"><font color="FFFFFF">关闭</font></a>
				<a href="http://localhost:8080/GP/produce/z_project.jsp"><font color="FFFFFF">返回主界面</font></a>
	 </div>
  </div>
  </body>
</html>