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
<script src="/GYH/product/product.js"></script>
<script type="text/javascript">
	$(function() {
	});
</script>
</head>
<body>
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<img src="/GYH/image/contact.jpg" alt="..."
				style="width:100%;heigth:300px;">
			<div class="row" style="padding-top:10px;">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">联系方式</h3>
						</div>
						<div class="panel-body">
							<form class="form-horizontal well" role="form">
								<div class="form-group">
									<label class="col-sm-2 control-label">公司地址</label>
									<div class="col-sm-10">
										<p class="form-control-static">8888888888888</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">联系电话</label>
									<div class="col-sm-10">
										<p class="form-control-static">18621554830&13641894933</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">邮箱</label>
									<div class="col-sm-10">
										<p class="form-control-static">724640273@qq.com</p>
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