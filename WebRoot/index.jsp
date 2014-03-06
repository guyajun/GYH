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
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">首页</a></li>
					<li><a href="/GYH/product/getAll.action?category=1">产品</a></li>
					<li><a href="#contact">服务</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="../navbar/">Default</a></li>
					<li><a href="../navbar-static-top/">Static top</a></li>
					<li><a href="./">Fixed top</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="wrap">
		<div class="container">
		<img alt="" src="/GYH/image/nav.jpg" style="height:350px;width:100%;">
			<div class="row" style="padding-top:20px;">
				<div class="col-sm-8">
					<div class="panel panel-info" style="height:200px;">
						<div class="panel-heading">
							<h3 class="panel-title">公司简介</h3>
						</div>
						<div class="panel-body">谷钰行实业有限公司</div>
					</div>
					<div class="panel panel-info" style="height:1000px;">
						<div class="panel-heading">
							<h3 class="panel-title">产品</h3>
						</div>
						<div class="panel-body">
							<div class="col-sm-6">
								<div class="thumbnail" style="height:420px;">
									<img src="/GYH/image/6.jpg" alt="...">
									<div class="caption text-center">
										<h3>热带芒果干</h3>
										<br> 品牌：千古粮缘
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="thumbnail" style="height:420px;">
									<img src="/GYH/image/grape.jpg" alt="...">
									<div class="caption text-center">
										<h3>阿根廷大颗粒葡萄干</h3>
										<br> 品牌：千古粮缘
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="thumbnail" style="height:420px;">
									<img src="/GYH/image/xinggan.jpg" alt="...">
									<div class="caption text-center">
										<h3>土耳其杏干</h3>
										<br> 品牌：千古粮缘
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="thumbnail" style="height:420px;">
									<img src="/GYH/image/manyuemei.jpg" alt="...">
									<div class="caption text-center">
										<h3>美国蔓越莓干</h3>
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
					<div class="panel panel-info" style="height:600px;">
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

		</div>
	</div>
	<div id="footer">
		<div class="container" style="padding-top:20px;">
			<p class="text-center">谷钰行实业有限公司</p>
		</div>
	</div>
</body>
</html>