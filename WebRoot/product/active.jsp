<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>谷钰行</title>
<link href="/GYH/css/bootstrap.css" rel="stylesheet">
<link href="/GYH/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="/GYH/css/sticky-footer-navbar.css" rel="stylesheet">
<script src="/GYH/js/jquery-1.9.1.js"></script>
<script src="/GYH/js/jquery.validate.js"></script>
<script src="/GYH/js/bootstrap.js"></script>
<script src="/GYH/js/bootbox.js"></script>
<script src="/GYH/product/index.js"></script>
</head>
<body>
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<img alt="" src="/GYH/image/nav.jpg" style="height:350px;width:100%;">
			<div class="row" style="padding-top:20px;">
				<div class="col-sm-8">
					<div class="panel panel-info" style="height:1000px;">
						<div class="panel-heading">
							<h3 class="panel-title">激活账户</h3>
						</div>
						<div class="panel-body">${userInfo.nick}:您好！您的账户已经激活，恭喜你成为我们网站的用户，请登录！<a href="/GYH/product/login.jsp">点击进入登陆界面</a></div>
					</div>
				</div>
				<div class="col-sm-4">					
					<div class="modal fade" id="modal-register">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="form0" method="post"
									action="/GYH/system/userInfo_addUserInfo.action"
									class="form-horizontal" role="form">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">用户注册</h4>
									</div>
									<div class="modal-body">
										<div id="alert0" class="alert alert-danger text-center hide"></div>
										<div class="form-group">
											<label for="email" class="col-sm-4 control-label">邮箱：</label>
											<div class="col-sm-6">
												<input id="email" name="email" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="password1" class="col-sm-4 control-label">密码：</label>
											<div class="col-sm-6">
												<input id="password1" name="password1" type="password"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="password2" class="col-sm-4 control-label">密码确认：</label>
											<div class="col-sm-6">
												<input id="password2" name="password2" type="password"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="nick" class="col-sm-4 control-label">昵称：</label>
											<div class="col-sm-6">
												<input id="nick" name="nick" type="text"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button id='button0' type="button" class="btn btn-success">保存</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="panel panel-info" style="height:400px;">
						<div class="panel-heading">
							<h3 class="panel-title">新闻</h3>
						</div>
						<div class="panel-body">新闻</div>
					</div>
					<div class="panel panel-info" style="height:600px;">
						<div class="panel-heading">
							<h3 class="panel-title">友情链接</h3>
						</div>
						<div class="panel-body">
							<table class="table">
								<tbody>
									<tr>
										<td><a href="http://vegehome.1688.com/">嘉善随缘食品有限公司</a>
										</td>
									</tr>
									<tr>
										<td><a href="http://vegehome.1688.com/">素之都食品有限公司</a>
										</td>
									</tr>
									<tr>
										<td><a href="http://vegehome.1688.com/">拓勤食品有限公司</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="/product/foot.jsp"></jsp:include>
</body>
</html>