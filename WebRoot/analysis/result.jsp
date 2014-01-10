<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
  <title>管片生产管理信息系统</title>
  </head>
  <body>
	<div class="easyui-panel" title="混凝土抗压强度评定表" style="width:auto">	 
	    <table id="tt" class="easyui-datagrid"  style="width:auto;height:250px">
	    <thead>
	    <tr>
	    <th data-options="field:'id',width:100" align="center">序号</th>
	    <th data-options="field:'reportId',width:200" align="center">报告编号</th>
	      <th data-options="field:'proId',width:100" align="center">检测状态</th>
	    <th data-options="field:'pdfLocation',width:300" align="center">文件地址</th>
	    </tr>
	    </thead>
	    <s:iterator  value="#request['pdfsearch']" id="c2">
	    <tr>
	    <td><s:property value="#c2.id" /></td> 
	     <td><s:property value="#c2.reportId" /></td>
	     <s:if test="#c2.proId = 1">
	     <td>合格</td>
	     </s:if>
	     <s:else>
	     <td>不合格</td>
	     </s:else>
	           <td><a href="/GP/uploadfile<s:property value="pdfLocation" />" target="_blank"><s:property value="#c2.pdfLocation" /> </a></td>
	          </tr>
	    </s:iterator>
	</table>
<!-- 	<input class="easyui-linkbutton" type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页"> -->
	</div>
</body>
</html>
