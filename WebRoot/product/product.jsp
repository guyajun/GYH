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
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<div class="row" style="padding-top:60px;">
				<div class="col-sm-3">
					<div class="panel panel-default">
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

									<s:if
										test="#session.email=='724640273@qq.com' || #session.email=='1037536894@qq.com'">
										<tr>
											<td><a href="#" data-toggle="modal"
												class="btn btn-success"
												data-target="#modal-add-big-category">添加大类(如上)</a></td>
										</tr>
										<tr>
											<td><a href="#" data-toggle="modal"
												class="btn btn-success"
												data-target="#modal-add-small-category">添加新品(如右)</a>
											</td>
										</tr>
									</s:if>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal fade" id="modal-add-big-category">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="form1" method="post"
									action="/GYH/product/product_addBig.action"
									class="form-horizontal" role="form">
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
									action="/GYH/product/product_addSmall.action"
									class="form-horizontal" role="form"
									enctype="multipart/form-data">
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
											<label for="market-price" class="col-sm-4 control-label">市场价(￥)：</label>
											<div class="col-sm-6">
												<input id="market-price" name="marketPrice" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="good-price" class="col-sm-4 control-label">优惠价(￥)：</label>
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
					<div class="modal fade" id="modal-edit">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="form3" method="post"
									action="/GYH/product/product_editSmall.action"
									class="form-horizontal" role="form"
									enctype="multipart/form-data">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title">修改产品信息</h4>
									</div>
									<div class="modal-body">
										<div id="alert1" class="alert alert-danger text-center hide"></div>
										<div class="form-group">
											<label for="name" class="col-sm-4 control-label">产品名称：</label>
											<div class="col-sm-6">
												<input id="name" name="name" type="text"
													class="form-control"> <input id="id" name="id"
													type="hidden" class="form-control">
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
											<label for="market-price" class="col-sm-4 control-label">市场价(￥)：</label>
											<div class="col-sm-6">
												<input id="market-price" name="marketPrice" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="good-price" class="col-sm-4 control-label">优惠价(￥)：</label>
											<div class="col-sm-6">
												<input id="good-price" name="goodPrice" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="specification" class="col-sm-4 control-label">规格：</label>
											<div class="col-sm-6">
												<input id="specification" name="specification" type="text"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label for="image" class="col-sm-4 control-label">替换图片：</label>
											<div class="col-sm-6">
												<input id="image" name="upload" type="file"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button id='button3' type="button" class="btn btn-success">保存</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
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
				<form id="form-hide" method="post"
					action="/GYH/product/product_deleteProduct.action"
					class="hide form-horizontal" role="form">
					<input id="id" name="id" type="text" class="form-control">
					<input id="parentId" name="parentId" type="text"
						class="form-control">
				</form>
				<div class="col-sm-9">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">产品</h3>
						</div>
						<div class="panel-body">
							<s:iterator value="#request.list1" id="product1">
								<div class="col-sm-4">
									<div class="thumbnail">
										<a
											href="/GYH/product/detail.action?productId=<s:property value="#product1.id"/>"><img
											src="/GYH/stream/stream.action?imgName=<s:property value="#product1.image1"/>"
											alt="..." style="height:200px;"> </a>
										<div class="caption text-center">
											<h3>
												<s:property value="#product1.name" />
											</h3>
											<table class="table">
												<tbody>
													<tr class="danger">
														<td id="market-price"><s>￥<s:property
																	value="#product1.marketPrice" /> </s></td>
														<td id="good-price">￥<s:property
																value="#product1.goodPrice" /></td>
													</tr>
													<tr>
														<td id="id" class="hide"><s:property
																value="#product1.id" /></td>
														<td id="parentId" class="hide"><s:property
																value="#product1.parentId" /></td>
														<td id="name" class="hide"><s:property
																value="#product1.name" /></td>
														<s:if
															test="#session.email=='724640273@qq.com' || #session.email=='1037536894@qq.com'">
															<td><a href="#" class="edit" data-toggle="modal"
																data-target="#modal-edit">修改</a></td>
															<td><a href="#" class="delete">删除</a></td>
														</s:if>
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
	<jsp:include page="/product/foot.jsp"></jsp:include>
</body>
</html>