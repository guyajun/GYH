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
	<link href="/GP/Web/bootstrap-3.0.0/css/bootstrap-datetimepicker.css" rel="stylesheet">
	<link href="/GP/Web/bootstrap-3.0.0/css/sticky-footer-navbar.css" rel="stylesheet">
	<script src="/GP/Web/bootstrap-3.0.0/js/jquery-1.9.1.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/jquery.validate.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootstrap.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootbox.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/moment.min.js"></script>
	<script src="/GP/Web/bootstrap-3.0.0/js/bootstrap-datetimepicker.js"></script>
</head>
<body>
	<div id="wrap">
		<iframe src="/GP/construct-web/menu.action" width="100%" height="160px"></iframe>
		<div class="container">
			<div class="row">
				<div class="panel panel-info">
					<div class="panel-heading">项目管理</div>
					<div class="panel-body">
						<div class="well">
							<a href="#" class="btn btn-success" data-toggle="modal" data-target="#modal-project">查询项目信息</a>
							<a href="#" class="btn btn-success">添加项目信息</a>
						</div>
						<table class="table">
							<tr>
								<td>项目名称</td>
								<td>父项目名称</td>
								<td>项目经理</td>
								<td>生产单位</td>
								<td>施工单位</td>
								<td>详细</td>
							</tr>
							<tr></tr>
						</table>
					</div>
				</div>
			</div>
			<div class="modal fade" id="modal-project">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">查询项目信息</h4>
						</div>
						<div class="modal-body">
							<form class="form-inline" role="form">
								<div class="form-group col-sm-8">
									<label class="col-sm-5 control-label" for="input-project-name">项目名称：</label>
									<div class="col-sm-7 input-group">
										<input id="input-project-name" type="text" class="form-control"></div>
								</div>
								<div class="col-sm-4">
									<button type="submit" class="btn btn-success">查询</button>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<div id="footer">
<iframe src="/GP/Web/footer.jsp" class="col-md-12" frameborder="0" scrolling="no" height="60px"
						marginheight="0" marginwidth="0"></iframe>
</div>
</body>
</html>