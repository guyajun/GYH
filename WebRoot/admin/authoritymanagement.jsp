<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
  <title>管片生产管理信息系统</title>
   <link href="../css/produce.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="../themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="../css/demo.css"/>
	<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
 	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>	
 	<script type="text/javascript" src="../js/authoritymanagement.js"></script>
 	<script type="text/javascript">
	function save() 
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
		  <s:action name="testMenu" executeResult="true">
		  </s:action>
		  
		  </ul>
	  </div>
	  </div>
	
 <div style="margin:10px 0;"></div>
	<div id="tt" style="height:auto;">		
			<input id="xxx1" type="text"/>
		<div id="testmouse"></div>
		<input type="hidden" id="selectedRoleId"/>
		
		<table id="layouttable"   style="border:solid;width:650px;height:auto" >
			<tr>
				<td  width="400px" align="left" valign="top">
						<table id="roles"  style="border:solid;width:480px;height:200px"></table>
						<div style="padding:10px;">
							<form action="addRole.action" id="ff2" method="post" style="display:none;">
								<table>
									<tr>
										<td>角色名:</td>
										<td><input type="text" name="roleInfo.roleName"></input>
										</td>
										<td>角色描述:</td>
										<td><input type="text" name="roleInfo.roleDescription"></input>
										</td>
										<td><a class="easyui-linkbutton" onclick="save();">保存</a></td>										
									</tr>
								</table>							
							</form>
						</div>
				</td>
				<td width="210px" align="left" valign="top">				
					<ul id="authoritytree" style="overflow:scroll;" ></ul>
				</td>
			</tr>
			
		</table>
		<script type="text/javascript"> 
		$('#layouttable').mousemove(function(e) { 
		//兼容ie与其他浏览器
		//var xxx1 = e.originalEvent.pageX||e.originalEvent.x;
		var xxx1 = e.pageX;
		$('#xxx1').val(xxx1);
		}); 
		</script> 
					
	</div>
	 
</div>
</body>
</html>