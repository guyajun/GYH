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
<script src="/GYH/js/respond.src.js"></script>
<script type="text/javascript">
	$(function() {
		var _form0 = $('#form0');
		var _button0 = _form0.find('#button0');
		var _alert0 = _form0.find('#alert0');
		function errorHandle0(message) {
			_alert0.removeClass('hide').html(message);
		}
		var form0Validator = _form0.validate({
			rules : {
				email : {
					required : true,
					email : true
				}
			},
			messages : {
				email : {
					required : "邮箱不能为空",
					email : "必须是邮箱格式"
				}
			}
		});
		_button0.on('click', function() {
			if (form0Validator.form()) {
				var email = _form0.find('#email').val();
				$.ajax({
					type : 'POST',
					url : "/GYH/system/passwordEmail.action",
					data : {
						email : email
					},
					dataType : "JSON",
					success : function(data) {
						if (data.message === "ok") {
							errorHandle0("邮件已经发送到您的邮箱，请到您的邮箱点击超链接重设密码！");
						}
					},
					error : function(err) {
						alert("err" + err);
					}
				});
			}
		});
		var _form7 = $('#form7');
		var _button7 = _form7.find('#button7');
		var _alert7 = _form7.find('#alert7');
		function errorHandle7(message) {
			_alert7.removeClass('hide').html(message);
			setTimeout(function() {
				_alert7.addClass('hide').html('');
			}, 5000);
		}
		var form7Validator = _form7.validate({
			rules : {
				email : {
					required : true,
					email : true
				},
				password : {
					required : true,
					minlength : 3
				}
			},
			messages : {
				email : {
					required : "邮箱不能为空",
					email : "必须是邮箱格式"
				},
				password : {
					required : "密码不能为空",
					minlength : "密码长度至少为3"
				}
			}
		});
		_button7.on('click', function() {
			if (form7Validator.form()) {
				var email = _form7.find('#email').val();
				var password = _form7.find('#password').val();
				$.ajax({
					type : 'POST',
					url : "/GYH/system/login.action",
					data : {
						email : email,
						password : password
					},
					dataType : "JSON",
					success : function(data) {
						if (data.message === "notActive") {
							errorHandle7("邮箱未激活，请到您的邮箱激活您的注册帐号！");
						} else if (data.message === "notPassword") {
							errorHandle7("密码不正确，请重新输入密码！");
						} else if (data.message === "notEmail") {
							errorHandle7("此邮箱还未注册！");
						} else {
							window.location.href = "/GYH/index.jsp";
						}
					},
					error : function(err) {
						alert("err" + err);
					}
				});
			}
		});
	});
</script>
</head>
<body>
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<img alt="" src="/GYH/image/nav.jpg" style="height:350px;width:100%;">
			<div class="row" style="padding-top:20px;">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">用户登录</h3>
						</div>
						<div class="panel-body">
							<form id="form7" method="post" class="form-horizontal"
								role="form">
								<div id="alert7" class="alert alert-danger text-center hide"></div>
								<div class="form-group">
									<label for="email" class="col-sm-4 control-label">邮箱：</label>
									<div class="col-sm-6">
										<input id="email" name="email" type="text"
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-4 control-label">密码：</label>
									<div class="col-sm-6">
										<input id="password" name="password" type="password"
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-6">
										<button id='button7' type="button" class="btn btn-success">登录</button>
										<a id='button77' href="#" data-toggle="modal"
											data-target="#modal-password">找回密码</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modal-password">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="form0" method="post" class="form-horizontal">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">找回密码</h4>
					</div>
					<div class="modal-body">
						<div id="alert0" class="alert alert-danger text-center hide"></div>
						<div class="form-group">
							<label for="email" class="col-sm-4 control-label">邮箱：</label>
							<div class="col-sm-6">
								<input id="email" name="email" type="text" class="form-control">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button id='button0' type="button" class="btn btn-success">发送邮件</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="/product/foot.jsp"></jsp:include>
</body>
</html>