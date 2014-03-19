<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>谷</title>
<link href="/GYH/css/bootstrap.css" rel="stylesheet">
<link href="/GYH/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="/GYH/css/sticky-footer-navbar.css" rel="stylesheet">
<link href="/GYH/css/carousel.css" rel="stylesheet">
<script src="/GYH/js/jquery-1.9.1.js"></script>
<script src="/GYH/js/jquery.validate.js"></script>
<script src="/GYH/js/bootstrap.js"></script>
<script src="/GYH/js/bootbox.js"></script>
<script src="/GYH/js/respond.src.js"></script>
</head>
<body>
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<div class="row">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img src="/GYH/image/nav.jpg" style="height:300px;"
								alt="First slide">
							<div class="carousel-caption">
								<h3>水果一箩筐</h3>
								<p>Nulla vitae elit libero, a pharetra augue mollis
									interdum.</p>
							</div>
						</div>
						<div class="item">
							<img src="/GYH/image/yuebing.jpg"
								style="height:300px;width:100%;" alt="Second slide">
							<div class="carousel-caption">
								<h3>中秋月饼大放送</h3>
								<p>Nulla vitae elit libero, a pharetra augue mollis
									interdum.</p>
							</div>
						</div>
						<div class="item">
							<img src="/GYH/image/xiangchun.jpg"
								style="height:300px;width:100%;" alt="Third slide">
							<div class="carousel-caption">
								<h3>香椿新产品</h3>
								<p>Nulla vitae elit libero, a pharetra augue mollis
									interdum.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> </a> <a
						class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> </a>
				</div>
			<div style="padding-top:10px;width:100%;">
				<div class="col-sm-8">
					<div class="panel panel-info" style="height:200px;">
						<div class="panel-heading">
							<h3 class="panel-title">公司简介</h3>
						</div>
						<div class="panel-body">谷钰行实业有限公司</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">产品</h3>
						</div>
						<div class="panel-body">
							<div class="col-sm-4">
								<div class="thumbnail" style="height:350px;">

									<a
										href="/GYH/product/detail.action?productId=22"><img
										src="/GYH/image/mangguo.jpg" alt="..." style="height:200px;">
									</a>
									<div class="caption text-center">
										<h3>热带芒果干</h3>
										<br> 品牌：千古粮缘
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="thumbnail" style="height:350px;">

									<a
										href="/GYH/product/detail.action?productId=34"><img
										src="/GYH/image/grape.jpg" alt="..." style="height:200px;">
									</a>
									<div class="caption text-center">
										<h3>阿根廷大颗粒葡萄干</h3>
										<br> 品牌：千古粮缘
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="thumbnail" style="height:350px;">
									<a
										href="/GYH/product/detail.action?productId=51"><img
										src="/GYH/image/xinggan.jpg" alt="..." style="height:200px;">
									</a>
									<div class="caption text-center">
										<h3>土耳其杏干</h3>
										<br> 品牌：千古粮缘
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info" style="height:400px;">
						<div class="panel-heading">
							<h3 class="panel-title">新闻</h3>
						</div>
						<div class="panel-body">新闻</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">友情链接</h3>
						</div>
						<div class="panel-body">
							<table class="table">
								<tbody>
									<tr>
										<td><a href="http://vegehome.1688.com/">嘉善随缘食品有限公司</a></td>
									</tr>
									<tr>
										<td><a href="http://vegehome.1688.com/">素之都食品有限公司</a></td>
									</tr>
									<tr>
										<td><a href="http://vegehome.1688.com/">拓勤食品有限公司</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="modal-login">
				<div class="modal-dialog">
					<div class="modal-content">
						<form id="form7" method="post" action="/GYH/system/login.action"
							class="form-horizontal" role="form">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">用户登录</h4>
							</div>
							<div class="modal-body">
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
							</div>
							<div class="modal-footer">
								<button id='button7' type="button" class="btn btn-success">登录</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/product/foot.jsp"></jsp:include>
</body>
</html>