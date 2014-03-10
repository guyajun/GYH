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
		$('.upload').on('click', function() {
			var tr = $(this).parent().parent();
			var id = tr.find('#id').text().trim();
			$('#modal-upload').find('#id').val(id);
			$('#modal-upload').modal('show');
		});
	});
</script>
</head>
<body>
	<jsp:include page="/product/menu.jsp"></jsp:include>
	<div id="wrap">
		<div class="container">
			<div class="row" style="padding-top:60px;">
				<div class="col-sm-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">您可能喜欢</h3>
						</div>
						<div class="panel-body">
							<s:iterator value="#request.list" id="product">
								<s:if test="#product.parentId!=0">
									<div class="thumbnail">
										<a
											href="/GYH/product/detail.action?productId=<s:property value="#product.id"/>"><img
											src="/GYH/stream/stream.action?imgName=<s:property value="#product.image1"/>"
											alt="..." style="width:100%;"> </a>
										<div class="caption text-center">
											<h3>
												<s:property value="#product.name" />
											</h3>
											<table class="table">
												<tbody>
													<tr class="danger">
														<td id="market-price"><s> ￥ <s:property
																	value="#product.marketPrice" /> </s></td>
														<td id="good-price">￥<s:property
																value="#product.goodPrice" />
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</s:if>
							</s:iterator>
						</div>
					</div>
				</div>
				<div class="col-sm-9">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">产品</h3>
						</div>
						<div class="panel-body">
							<div class="col-sm-6">
								<img style="width:100%;height:100%;"
									src="/GYH/stream/stream.action?imgName=<s:property value="#request.oneProduct.image1"/>"
									alt="...">
							</div>
							<div class="col-sm-6">
								<div class="caption text-center">
									<h3>
										<s:property value="#request.oneProduct.name" />
									</h3>
									<table class="table">
										<tbody>
											<tr>
												<td>品牌：</td>
												<td id="brand"><s:property
														value="#request.oneProduct.brand" />
												</td>
											</tr>
											<tr>
												<td>市场价(￥)：</td>
												<td id="market-price"><s><s:property
															value="#request.oneProduct.marketPrice" /> </s>
												</td>
											</tr>
											<tr>
												<td>优惠价(￥)：</td>
												<td id="good-price"><s:property
														value="#request.oneProduct.goodPrice" />
												</td>
											</tr>
											<tr>
												<td>规格(g)：</td>
												<td id="specification"><s:property
														value="#request.oneProduct.specification" />
												</td>
											</tr>
											<tr>
												<td id="id" class="hide"><s:property
														value="#request.oneProduct.id" />
												</td>
												<td id="parentId" class="hide"><s:property
														value="#request.oneProduct.parentId" />
												</td>
												<td id="name" class="hide"><s:property
														value="#request.oneProduct.name" />
												</td>
												<s:if
													test="#session.email=='724640273@qq.com' || #session.email=='1037536894@qq.com'">

													<td><a href="#" class="upload btn btn-success"
														type="button">上传详细介绍图片</a>
													</td>
												</s:if>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<s:iterator value="#request.imgList" id="img">
								<div class="col-sm-12 well">
									<img style="width:100%;height:500px;"
										src="/GYH/stream/stream.action?imgName=<s:property/>"
										alt="...">
									<s:if
										test="#session.email=='724640273@qq.com' || #session.email=='1037536894@qq.com'">
										<a
											href="/GYH/product/delete.action?productId=<s:property
														value="#request.oneProduct.id" />&imgName=<s:property/>">删除</a>
									</s:if>
								</div>
							</s:iterator>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modal-upload">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="form2" method="post" action="/GYH/product/upload.action"
					class="form-horizontal" role="form" enctype="multipart/form-data">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">上传详细介绍图片</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="image" class="col-sm-4 control-label">图片上传：</label>
							<div class="col-sm-6">
								<input id="image" name="upload" type="file" class="form-control">
								<input id="id" name="id" type="hidden" class="form-control">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button id='button2' type="submit" class="btn btn-success">确定</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="/product/foot.jsp"></jsp:include>
</body>
</html>