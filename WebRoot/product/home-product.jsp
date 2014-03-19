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
	<div>
		<s:iterator value="#request.list2" id="product">
			<div class="col-sm-4">
				<div class="thumbnail" style="height:420px;">
					<a
						href="/GYH/product/detail.action?productId=<s:property value="#product.id"/>"><img
						target="_parent"
						src="/GYH/stream/stream.action?imgName=<s:property value="#product.image1"/>"
						alt="..." style="height:150px;"> </a>
					<div class="caption text-center">
						<h3>
							<s:property value="#product.name" />
						</h3>
						<br> <s>￥<s:property value="#product.marketPrice" />&nbsp&nbsp&nbsp
						</s>￥
						<s:property value="#product.goodPrice" />
					</div>
				</div>
			</div>
		</s:iterator>
	</div>
</body>
</html>