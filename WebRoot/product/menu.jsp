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
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top"
		style="background-color: #26AC7B;" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/GYH/index.jsp">Brand</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/GYH/index.jsp">首页</a></li>
					<li><a href="/GYH/product/getAll.action?category=1">品牌专卖</a></li>
					<li><a href="/GYH/product/contact.jsp">联系我们</a></li>
					<li><a href="/GYH/system/note_getAll.action">我有态度</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<s:if test="#session.nick==null">
						<li><a id="login" href="/GYH/product/login.jsp">登录</a></li>
						<li><a id="register" href="/GYH/product/register.jsp">注册</a></li>
					</s:if>
					<s:else>
						<li><a id="login" href="#" data-toggle="modal"
							target="_parent" data-target="#modal-login">欢迎你：</a>
						</li>
						<li><a id="register" href="#" data-toggle="modal"
							target="_parent" data-target="#modal-register"><s:property
									value="#session.nick" />
						</a></li>
						<li><a href="/GYH/system/userInfo_quit.action">退出</a></li>
					</s:else>
				</ul>
			</div>
		</div>
	</div>

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
								<input id="email" name="email" type="text" class="form-control">
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
								<input id="nick" name="nick" type="text" class="form-control">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button id='button0' type="button" class="btn btn-success">保存</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>