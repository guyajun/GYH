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
		function save()
		{
		$('#ff3').submit();
		}
	</script>
	<script type="text/javascript">
	function tf()
	{
	var tf=document.getElementById("test123");
	var gyj=document.getElementById("hi");
	gyj.value=tf.value;
	}
	</script>
 </head>
<body>
	<jsp:include page="../produce/produce_head.jsp"></jsp:include>
    <div class="box-left">
    <div  title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
		  <ul class="easyui-tree">
		  <s:action name="testMenu" executeResult="true">
		  </s:action>
		  </ul>
	  </div>
	  </div>
<div style="padding:10px;"></div>
	<div id="tt" style="height:768px;">		
			
					<form id="ff3" action="proInfo.action" method="post">		 			
						       <div class="easyui-panel" style="width:420px;height:200px;padding:10px;"title="基本信息" >
						      
					               <table width="300px" >
					                   <tr>
									   <td>
											 <label>上级工程名称</label>
											  </td>
											 <td>
												<select name="proInfo.parentId" style="width:269px;">
													<option value="0" selected></option>
													<s:iterator value="#request.listpro" id="list1">											
														<option value="<s:property value="#list1.id"/>">
															<s:property value="#list1.proName"/>
														</option>	
													</s:iterator>
												</select>
											
											
											 </td>
										</tr>
								     	<tr>
										<td>
											 <label>项&nbsp;&nbsp;目&nbsp;&nbsp; 名&nbsp;&nbsp;称&nbsp;</label>
											  </td>
											 <td>
											 <input name="proInfo.proName" style="width:269px;" id="test123" onchange="tf()">
											 </td>
									    </tr>
										 <tr>
										 <td>
											 <label>项&nbsp;&nbsp;目&nbsp;&nbsp;描&nbsp;&nbsp;述&nbsp;&nbsp;</label>
											 </td>
											 <td>
											<textarea name="proInfo.description" cols="40" rows="5" style="height:100px;">
											
											</textarea>
											</td>
											</tr>
											</table> 
								         
			                  </div>
		
							  <div class="easyui-panel" style="width:420px;height:130px;padding:10px;"title="项目性质" >
					               <table width="320px">
					                   <tr>
									   <td>
											 <label>项目板块</label>
											 <select name="proInfo.proBlock" style="width:80px;" >
											  <option>公路隧道</option>
											  <option selected>越江隧道</option>
											  <option>地铁隧道</option>
											  <option>穿山隧道</option>									  
											  </select>
											 </td>
											  <td>
											 <label>重大项目</label>
											 <select name="proInfo.importantPro" style="width:80px;">
											  <option value="1" selected>是</option>
											   <option value="0">否</option>
											  </select>
											 </td>
										</tr>
										<tr>
									   <td>
											 <label>重点关注</label>
											 <select name="proInfo.keyFocus" style="width:80px;" >
											  <option value="1" selected>是</option>
											  <option value="0">否</option>
											  </select>
											 </td>
											  <td width="179px;">
											 <label>项目状态</label>
											 <select name="proInfo.proStatus" style="width:80px;">
											  <option>在建</option>
											  <option>已建</option>
											  <option>未建</option>
											  <option>运营</option>
											  <option>维护</option>
											  </select>
											 </td>
										</tr>
										<tr>
									   <td>
											 <label>项目类别</label>
											 <select name="proInfo.proClass" style="width:80px;">
											  <option>基坑</option>
											  </select>
											 </td>
											  <td>
											 <label>省市项目</label>
											 <select name="proInfo.provincePro" style="width:80px;" >
											  <option value="1" selected>是</option>
											  <option value="0">否</option>
											  </select>
											 </td>
										</tr>	
					                </table>
					               
									</div>
							  
							    <div class="easyui-panel" style="width:420px;height:240px;padding:10px;"title="项目信息" >
							  
					               <table width="320px" >
					                   <tr>
											<td>
											 <label>项&nbsp;&nbsp;目&nbsp;&nbsp; 经&nbsp;&nbsp;理</label>
											 </td>
											 <td>									 																				  
											   <input name="proInfo.directorId" width="269px">																						
											 </td>
										</tr>
										<tr>
											 <td>	
											 <label>一级安全总监</label>		
											 </td>
											 <td>																			
											  <input name="proInfo.levelOneId" width="269px">	
											
											 </td>
										</tr>
										<tr>
											
											
											  <td>
											 <label>二级安全总监</label>	
											 </td>
											 <td>										
											  <input name="proInfo.levelTwoId" width="269px">	
											 </td>
										</tr>	
										<tr>
									   		<td>
											 <label>生产单位</label>	
											 </td>
											 <td>						
											   <input name="proInfo.produceUnit" width="269px">
											 </td>
											 </tr>		               
											 <tr>
									   		<td>
											 <label>建设单位</label>	
											 </td>
											 <td>										
											   <input name="proInfo.buildUnit" width="269px">
											 </td>
											 </tr>
											 <tr>
											  <td>
											 <label>设计单位</label>
											 </td>
											 <td>											 
											   <input name="proInfo.designUnit" width="269px">
											 </td>
										</tr>
										 <tr>
											  <td>
											 <label>主管单位</label>
											 </td>
											 <td>
											   <input name="proInfo.manageUnit" width="269px">
											 </td>
										</tr>
										 <tr>
											  <td>
											 <label>施工单位</label>
											 </td>
											 <td>
											   <input name="proInfo.constructUnit" width="269px">
											 </td>
										</tr>			               
					                
			                
							  </table>	
							  <br />
								
							 
					
				</div>
				   </form>
				   
				   
				   
				 
					<table>
						<tr>
							<td width="185px"></td>
							<td>
								 <div class="easyui-panel" style="width:420px;height:120px;padding:10px;"title="上传图片" >
							 	<s:form action="upload.action" method="post" enctype="multipart/form-data">	
									<input id="hi" name="url" style="width:150px;" type="hidden"/>			
									<s:file name="upload" label="上传的文件"></s:file>
									<s:submit value="上传"></s:submit>
								</s:form>
								</div>
							</td>
							
						</tr>
						<tr>
							<td width="185px"></td>
							<td>
								<div style="padding:5px">								
										<a class="easyui-linkbutton" onClick="save()">保存</a>
								  </div>
							  </td>
							
						</tr>
					</table>
		</div>
</body>
</html>