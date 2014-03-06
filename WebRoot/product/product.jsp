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
					<li><a href="#">首页</a>
					</li>
					<li><a href="/GYH/product/getAll.action?category=1">产品</a></li>
					<li><a href="#contact">服务</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="../navbar/">Default</a>
					</li>
					<li><a href="../navbar-static-top/">Static top</a>
					</li>
					<li><a href="./">Fixed top</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="wrap">
		<div class="container">
			<div class="row" style="padding-top:60px;">
				<div class="col-sm-3">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">所有产品</h3>
						</div>
						<div class="panel-body">
							<table class="table">
								<tbody>
									<s:iterator value="#request.list" id="product">
										<s:if test="#product.parentId==0">
											<tr>
												<td><a
													href="/GYH/product/getAll.action?category=<s:property value="#product.id" />"><s:property
															value="#product.name" /> </a>
												</td>
											</tr>
										</s:if>
									</s:iterator>
									<tr>
										<td><a href="#" data-toggle="modal"
											data-target="#modal-add-big-category">添加大类</a>
										</td>
									</tr>
									<tr>
										<td><a href="#" data-toggle="modal"
											data-target="#modal-add-small-category">添加小类</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal fade" id="modal-add-big-category">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="form1" method="post"
									action="/GYH/product/addBig.action" class="form-horizontal"
									role="form">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">添加产品大类</h4>
									</div>
									<div class="modal-body">
										<div id="alert1" class="alert alert-danger text-center hide"></div>
										<div class="form-group">
											<label for="name" class="col-sm-4 control-label">产品名称：</label>
											<div class="col-sm-6">
												<input id="name" name="name" type="text"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button id='button1' type="button" class="btn btn-success">保存</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="modal fade" id="modal-add-small-category">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="form2" method="post"
									action="/GYH/product/addSmall.action" class="form-horizontal"
									role="form" enctype="multipart/form-data">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">添加产品小类</h4>
									</div>
									<div class="modal-body">
										<div id="alert1" class="alert alert-danger text-center hide"></div>
										<div class="form-group">
											<label for="name" class="col-sm-4 control-label">产品名称：</label>
											<div class="col-sm-6">
												<input id="name" name="name" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="brand" class="col-sm-4 control-label">品牌：</label>
											<div class="col-sm-6">
												<input id="brand" name="brand" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="brand" class="col-sm-4 control-label">选择大类：</label>
											<div class="col-sm-6">
												<select id="select" class="form-control" name="parentId">
													<s:iterator value="#request.list" id="product">
														<s:if test="#product.parentId==0">
															<option value="<s:property value="#product.id"/>">
																<s:property value="#product.name" />
															</option>
														</s:if>
													</s:iterator>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="market-price" class="col-sm-4 control-label">市场价：</label>
											<div class="col-sm-6">
												<input id="market-price" name="marketPrice" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="good-price" class="col-sm-4 control-label">优惠价：</label>
											<div class="col-sm-6">
												<input id="good-price" name="goodPrice" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="good-price" class="col-sm-4 control-label">规格：</label>
											<div class="col-sm-6">
												<input id="good-price" name="specification" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="image" class="col-sm-4 control-label">图片上传：</label>
											<div class="col-sm-6">
												<input id="image" name="upload" type="file"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button id='button2' type="button" class="btn btn-success">保存</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
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
				<div class="col-sm-9">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">产品</h3>
						</div>
						<div class="panel-body">
							<s:iterator value="#request.list1" id="product1">
								<div class="col-sm-6">
									<div class="thumbnail">
										<img
											src="/GYH/stream/stream.action?imgName=<s:property value="#product1.image1"/>"
											alt="...">
										<div class="caption text-center">
											<h3>
												<s:property value="#product1.name" />
											</h3>
											<table class="table">
												<tbody>
													<tr>
														<td>品牌：</td>
														<td><s:property value="#product1.brand" /></td>
													</tr>
													<tr>
														<td>市场价(￥)：</td>
														<td><s:property value="#product1.marketPrice" /></td>
													</tr>
													<tr>
														<td>优惠价(￥)：</td>
														<td><s:property value="#product1.goodPrice" /></td>
													</tr>
													<tr>
														<td>规格(g)：</td>
														<td><s:property value="#product1.specification" /></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</s:iterator>
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