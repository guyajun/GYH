<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<title>施工端数据展示</title>
	<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap.css" rel="stylesheet">
	<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap-datetimepicker.css" rel="stylesheet">
	<link href="/GP/Web/bootstrap-3.0.0/css/sticky-footer-navbar.css" rel="stylesheet">
	<script src="/GP/Web/bootstrap-3.0.0/js/jquery-1.9.1.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/jquery.validate.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootstrap.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootbox.js"></script>
	<link rel="stylesheet" type="text/css" href="/GP/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="/GP/themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="/GP/css/demo.css"/>
	<script type="text/javascript" src="/GP/js/jquery-1.8.0.min.js"></script>
 	<script type="text/javascript" src="/GP/js/jquery.easyui.min.js"></script>	
	<script src="/GP/Web/admin-manage/authoritymanagement.js"></script>
	<script type="text/javascript"> 
		$('#layouttable').mousemove(function(e) { 
		//兼容ie与其他浏览器
		//var xxx1 = e.originalEvent.pageX||e.originalEvent.x;
		var xxx1 = e.pageX;
		$('#xxx1').val(xxx1);
		}); 
		</script> 
</head>
<body>
	<div id="wrap">		
		<iframe src="/GP/construct-web/menu.action" width="100%" height="160px"></iframe>   	
 <div  class="container" style="margin:10px 0;"></div>
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