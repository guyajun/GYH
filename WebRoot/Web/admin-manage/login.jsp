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
	<script src="/GP/Web/admin-manage/role.js"></script>
</head>
<body>
	<div id="wrap">	
		<div class="container">
			<div class="page-header">
			  	<h1>用户登录</h1>
			</div>
			<div class="row">		
				<form method="post" action="/GP/system/constructLogin.action" class="form-horizontal well col-sm-8" role="form">
					  <div class="form-group">
					    <label for="input-name" class="col-sm-4 control-label">用户名：</label>
					    <div class="col-sm-6">
					      <input type="text" name="userinfo.loginName" class="form-control" id="input-name">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="input-pass" class="col-sm-4 control-label">密码：</label>
					    <div class="col-sm-6">
					      <input type="password" name="userinfo.password" class="form-control" id="input-pass">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-4 col-sm-6 well">
					      <button type="submit" class="col-sm-offset-4 btn btn-success">登录</button>
					    </div>
					  </div>
				</form>	
			</div>
		</div>
	</div>
	
<div id="footer">
<iframe src="/GP/Web/footer.jsp" class="col-md-12" frameborder="0" scrolling="no" height="60px"
						marginheight="0" marginwidth="0"></iframe>
</div>
</body>
</html>
