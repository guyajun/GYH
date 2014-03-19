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
		var _form888 = $('#form888');
		var _button888 = _form888.find('#button888');
		var form888Validator = _form888.validate({
			rules : {
				name : {
					required : true
				},
				mobile : {
					number : true,
					minlength : 8
				},
				email : {
					email : true
				}
			},
			messages : {
				name : {
					required : "姓名不能为空！"
				},
				mobile : {
					number : "电话必须是数字！",
					minlength : "电话号码长度至少为8位数字！"
				},
				email : {
					email : "必须是邮箱格式！"
				}
			}
		});
		_button888.on('click', function() {
			if (form888Validator.form()) {
				_form888.submit();
			}
		});
	});
</script>
</head>
<body>
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<div class="row" style="padding-top:60px;">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">留言板！</h3>
					</div>
					<div class="panel-body">
						<dl>
							<dt>主人寄语</dt>
							<dd>谢谢大家的光顾，如果您对我们的产品有想法，请留言！</dd>
						</dl>
						<s:iterator value="#request.list" id="note">
							<div class="well">
								<hr>
								<dl>
									<dt>
										<s:property value="#note.name" />
									</dt>
									<dd>
										<s:property value="#note.message" />
										<p class="pull-right">
											<s:property value="#note.date" />
										</p>
										<br>
										<s:if
											test="#session.email=='724640273@qq.com' || #session.email=='1037536894@qq.com'">
											<a class="pull-right"
												href="/GYH/system/note_deleteNote.action?id=<s:property value="#note.id" />">删除</a>
										</s:if>
									</dd>
								</dl>
							</div>
						</s:iterator>
						<hr>
						<div class="col-sm-offset-3 col-sm-6">
							<form id="form888" class="form-horizontal well" method="post"
								action="/GYH/system/note_addNote.action" role="form">
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="name" name="name">
									</div>
								</div>
								<div class="form-group">
									<label for="mobile" class="col-sm-2 control-label">电话</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="mobile"
											name="mobile">
									</div>
								</div>
								<div class="form-group">
									<label for="email1" class="col-sm-2 control-label">邮箱</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="email1"
											name="email">
									</div>
								</div>
								<div class="form-group">
									<label for="address" class="col-sm-2 control-label">地址</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="address"
											name="address">
									</div>
								</div>
								<div class="form-group">
									<label for="message" class="col-sm-2 control-label">留言</label>
									<div class="col-sm-10">
										<textarea class="form-control" id="message" name="message"
											rows="5"></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button id="button888" type="button"
											class="btn btn-success btn-lg">确定</button>
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