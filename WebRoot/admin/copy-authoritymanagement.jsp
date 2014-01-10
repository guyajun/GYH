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
	<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap.css" rel="stylesheet"/>
	<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap-datetimepicker.css" rel="stylesheet"/>
	<link href="/GP/Web/bootstrap-3.0.0/css/sticky-footer-navbar.css" rel="stylesheet"/>
	<script src="/GP/Web/bootstrap-3.0.0/js/jquery-1.9.1.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/jquery.validate.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootstrap.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootbox.js"></script>
	<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
 	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>	
 	<script type="text/javascript" src="../js/authoritymanagement.js"></script>
 	<script type="text/javascript"> 
		$('#layouttable').mousemove(function(e) { 
		//兼容ie与其他浏览器
		//var xxx1 = e.originalEvent.pageX||e.originalEvent.x;
		var xxx1 = e.pageX;
		$('#xxx1').val(xxx1);
		}); 
		</script> 
 	<script type="text/javascript">
	function save() 
	{
		$('#ff2').submit();
	}
</script>
 </head>
<body>
		<iframe src="/GP/construct-web/menu.action" width="100%" height="160px"></iframe>
		<div class="container">	
	<div style="padding:10px;" class="hide">
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
			<input id="xxx1" type="hidden"/>
		<input type="hidden" id="selectedRoleId"/>
		
		<div id="layouttable" class="container">
			<div class="row">
			
				<div class="panel panel-info" style="heigth:800px;">
					<div class="panel-heading">项目管理</div>
					<div class="panel-body">
						
						<div class="col-sm-8">
								<table id="roles" class="table"></table>
						</div>
						<div class="col-sm-4">				
							<ul id="authoritytree" style="overflow:scroll;" ></ul>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
</body>
</html>