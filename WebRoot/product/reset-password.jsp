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
<script type="text/javascript">
	$(function() {
		var _form0 = $('#form0');
		var _button0 = _form0.find('#button0');
		var _alert0 = _form0.find('#alert0');
		var _password1 = _form0.find('#password1');
		var _password2 = _form0.find('#password2');
		_password2.blur(function() {
			if (_password1.val() != _password2.val()) {
				errorHandle0("两次密码输入不一致!请重新输入！");
			}
		});
		function errorHandle0(message) {
			_alert0.removeClass('hide').html(message);
			setTimeout(function() {
				_alert0.addClass('hide').html('');
			}, 5000);
		}
		var form0Validator = _form0.validate({
			rules : {
				password1 : {
					required : true,
					minlength : 3
				},
				password2 : {
					required : true,
					minlength : 3
				},
				nick : {
					required : true
				}
			},
			messages : {
				password1 : {
					required : "密码不能为空",
					minlength : "密码长度至少为3"
				},
				password2 : {
					required : "确认密码不能为空",
					minlength : "密码长度至少为3"
				},
				nick : {
					required : "昵称不能为空"
				}
			}
		});
		_button0.on('click', function() {
			if (form0Validator.form()) {
				var email = _form0.find('#email').val();
				var password = _form0.find('#password1').val();
				var nick = _form0.find('#nick').val();
				$.ajax({
					type : 'POST',
					url : "/GYH/system/resetOrRegister.action",
					data : {
						email : email,
						password : password,
						nick : nick
					},
					dataType : "JSON",
					success : function(data) {
						window.location.href = "/GYH/index.jsp";
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
	<div id="wrap">
		<div class="container">
			<img alt="" src="/GYH/image/nav.jpg" style="height:350px;width:100%;">
			<div class="row" style="padding-top:20px;">
				<div class="col-sm-12">
					<div class="panel panel-info" style="height:1000px;">
						<div class="panel-heading">
							<h3 class="panel-title">用户重设密码</h3>
						</div>
						<div class="panel-body">
							<form id="form0" method="post" class="form-horizontal">
								<div id="alert0" class="alert alert-danger text-center hide"></div>
								<div class="form-group">
									<label for="email" class="col-sm-4 control-label">邮箱：</label>
									<div class="col-sm-6">
										<input id="email" readonly name="email" type="text"
											value="<s:property value="#request.email" />"
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
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-6">
										<button id='button0' type="button" class="btn btn-success">确定并登录</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/product/foot.jsp"></jsp:include>
</body>
</html>