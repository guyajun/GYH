<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>施工端数据展示</title>
<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap.css" rel="stylesheet">
<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<link href="/GP/Web/bootstrap-3.0.0/css/sticky-footer-navbar.css"
	rel="stylesheet">
<script src="/GP/Web/bootstrap-3.0.0/js/jquery-1.9.1.js"></script>
<script src="/GP/Web/bootstrap-3.0.0/js/jquery.validate.js"></script>
<script src="/GP/Web/bootstrap-3.0.0/js/bootstrap.js"></script>
<script src="/GP/Web/bootstrap-3.0.0/js/bootbox.js"></script>
<script src="/GP/Web/bootstrap-3.0.0/js/moment.min.js"></script>
<script src="/GP/Web/bootstrap-3.0.0/js/bootstrap-datetimepicker.js"></script>
</head>
<body>
	<div id="wrap">
		<iframe src="/GP/construct-web/menu.action" width="100%"
			height="160px"></iframe>
		<div class="container">
			<div>
				<iframe style="padding-top:50px;"
					src="/GP/chart/getChartFour.action?
					startLoop=<s:property value="#request.startLoop"/>
					&endLoop=<s:property value="#request.endLoop"/>
					&checked=<s:property value="#request.aa"/>"
					scroll="true" class="col-sm-12" height="700px"></iframe>
			</div>
		</div>
	</div>
	<div id="footer">
		<iframe src="/GP/Web/footer.jsp" class="col-md-12" frameborder="0"
			scrolling="no" height="60px" marginheight="0" marginwidth="0"></iframe>
	</div>
</body>
</html>