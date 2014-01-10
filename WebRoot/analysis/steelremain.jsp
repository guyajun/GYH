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
		function saveScan() {
			$('#scan').submit();
		}
		
	</script>
	<script type="text/javascript">
		function recalculate() {
		var val=document.getElementById("count").value;
		if(val.length==0)
		{
		alert("请输入管片环数！");
		}else
		{
			$('#formrecalculate').submit();
		}
		}
		
	</script>
	<script type="text/javascript">
	function queryProject() {
			$('#query').submit();
		}
	</script>
	<script type="text/javascript">
		function saveScan() {
			$('#scan').submit();
		}
		
	</script>
	<script type="text/javascript">
		function calculateGpCount() {
			$('#form-count').submit();
		}
		
	</script>
	
  </head>
  
  <body>
      <jsp:include page="../produce/produce_head.jsp"></jsp:include>
	  
      <div class="box-left">
      <div  title="生产管理" style="width:170px;padding:10px;">
	  <ul class="easyui-tree">
	  <s:action name="testMenu" executeResult="true" />
	  </ul>
	  </div>
	  </div>
 
 <div style="margin:10px 0;"></div>
	<div id="tt" class="easyui-panel" style="width:940px;">
		<div class="easyui-tabs" style="width:930px;">
		<div title="钢筋剩余信息">		
			
		  <table  border="1" cellspacing="1" cellpadding="8" width="850px">
		  <tr align="center" height="30" >
  			<td colspan="11">上次计算钢筋库存量</td>	
  		</tr>
  		<tr align="center" bgcolor="white" height="30" >
  			<th>Φ6</th><th>Φ10</th><th>Φ12</th><th>Φ16</th><th>Φ18</th>
  			<th>Φ18HRB400</th><th>Φ20</th>	<th>Φ20HRB400</th>
  			<th>Φ22HRB400</th><th>Φ25HRB400</th><th>Φ28HRB400</th>	
  		</tr>
  		
  		<s:iterator value="#request.gpSteel" id="gpSteel">
  		<tr height="30">
			<td><s:property value="#gpSteel.s6"/></td>
			<td><s:property value="#gpSteel.s10"/></td>
			<td><s:property value="#gpSteel.s12"/></td>
			<td><s:property value="#gpSteel.s16"/></td>			
			<td><s:property value="#gpSteel.s18"/></td>		
			<td><s:property value="#gpSteel.s18hrb400"/></td>
			<td><s:property value="#gpSteel.s20"/></td>
			<td><s:property value="#gpSteel.s20hrb400"/></td>
			<td><s:property value="#gpSteel.s22hrb400"/></td>			
			<td><s:property value="#gpSteel.s25hrb400"/></td>		
			<td><s:property value="#gpSteel.s28hrb400"/></td>							
		</tr>		
		</s:iterator>
			
  	</table>
  	<br/>
  	<br/>
  	<br/>
  	
  	<form id="formrecalculate" method="post" action="recalculate.action">
		  <table border="1" width="850px">
				<tr align="center" height="30">
					  <td>请选择已经制造的管片类型：</td>
					  <td>
						   <select id="gpType" class="easyui-combobox" name="gpType"
									style="width:150px;">
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C" selected>C</option>
								<option value="D">D</option>
								<option value="E">E</option>
								<option value="F">F</option>
						  </select>			
					  </td>
					  
					    <td>请输入已经制造的管片环数：</td>
					  <td>
						    <input id="count" class="easyui-validatebox" name="count"
								style="width:150px;" />      
					  </td>
				</tr>
				<tr align="center" height="30">							
					  <td colspan="4">
						    <a class="easyui-linkbutton" onclick="recalculate();">重新计算剩余钢筋量</a>    						      
					  </td>
				</tr>			
		  </table>
		</form>		
	<p style="color: red;"><s:property value="#request.mess"/></p>
</div>
</div>
</div>
<div id="tt" class="easyui-panel" style="width:940px;height:auto; padding:0px;">
		<div class="easyui-tabs" style="width:930px;">
		<div title="钢筋剩余信息">		
  	<br/>
  	
  	<form id="form-count" method="post" action="calculateGpCount.action">
		  <table border="0">
				<tr>
					  <td>请选择要制造的管片类型：</td>
					  <td>
						   <select id="gpType" class="easyui-combobox" name="gpType"
									style="width:150px;">
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C" selected>C</option>
								<option value="D">D</option>
								<option value="E">E</option>
								<option value="F">F</option>
						  </select>			
					  </td>					  			
				</tr>
				<tr>							
					  <td colspan="4">
						    <a class="easyui-linkbutton" onclick="calculateGpCount();">可生产管片数量</a>      
					  </td>
					  <td ><p>管片类型:<s:property value="#request.gpType"/> 可生产环数:<s:property value="#request.min"/></p></td>
				</tr>			
		  </table>
		</form>		
</div>
</div>
</div>
</body>
</html>
