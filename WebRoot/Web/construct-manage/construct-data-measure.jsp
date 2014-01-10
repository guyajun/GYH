<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>施工端数据展示</title>
	<link href="../bootstrap-3.0.0/css/bootstrap.css" rel="stylesheet">
	<link href="../bootstrap-3.0.0/css/bootstrap-datetimepicker.css" rel="stylesheet">
	<link href="../bootstrap-3.0.0/css/sticky-footer-navbar.css" rel="stylesheet"></head>
<body>
	<div id="wrap">
		<iframe src="/GP/construct-web/menu.action" width="100%" height="160px"></iframe>
		<div class="container">
			<div class="row">
				<div class="panel panel-info" style="height:150px;">
					<div class="panel-heading">查询事项</div>
					<div class="panel-body">
						<div class="well">
							<iframe src="../query-items.jsp" height="40" frameborder="0" scrolling="no" width="100%"
						marginheight="0" marginwidth="0"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="div-measure" class="row">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">测点</h3>
					</div>
					<div class="panel-body">
						<table class="table">
							<tbody>
								<tr>
									<td>测点名称</td>
									<td>测点类型</td>
									<td>隧道坐标(X)</td>
									<td>隧道坐标(Y)</td>
									<td>组坐标(X)</td>
									<td>组坐标(Y)</td>
									<td>基准</td>
									<td>相关建筑物</td>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
			<iframe src="../footer.jsp" class="col-md-12" frameborder="0" scrolling="no" height="60"
						marginheight="0" marginwidth="0"></iframe>
	</div>
	<script src="../bootstrap-3.0.0/js/jquery-1.9.1.js"></script>
	<script src="../bootstrap-3.0.0/js/jquery.validate.js"></script>
	<script src="../bootstrap-3.0.0/js/bootstrap.js"></script>
	<script src="../bootstrap-3.0.0/js/moment.min.js"></script>
	<script src="../bootstrap-3.0.0/js/bootstrap-datetimepicker.js"></script>
	<script src="./construct-data.js"></script>
</body>
</html>