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
			<div id="div-syn" class="row hide">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">同步注浆信息</h3>
					</div>
					<div class="panel-body">
						<div class="btn-group">
							<button type="button" class="btn btn-primary">查询</button>
							<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
								<span class="caret"></span>
								<span class="sr-only">Toggle Dropdown</span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="#" data-toggle="modal" data-target="#modal-syn-date">按时间查询</a>
								</li>
								<li>
									<a href="#" data-toggle="modal" data-target="#modal-syn-loop">按环号查询</a>
								</li>
							</ul>
						</div>
						<button type="button" class="btn btn-primary">生成报表</button>
						<button type="button" class="btn btn-primary">导出EXCEL</button>
						<div class="modal fade" id="modal-syn-date">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">盾构推进信息查询</h4>
									</div>
									<div class="modal-body">
										<form class="form-inline" role="form">
											<div class="form-group col-sm-8">
												<label class="col-sm-5 control-label" for="input-start-date">推进日期：</label>
												<div class="col-sm-7 input-group start-date">
													<input id="input-start-date" type="text" class="form-control">
													<span class="input-group-addon glyphicon glyphicon-calendar"></span>
												</div>
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
						<div class="modal fade" id="modal-syn-loop">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">盾构推进信息查询</h4>
									</div>
									<div class="modal-body">
										<form class="form-inline" role="form">
											<div class="form-group col-sm-8">
												<label class="col-sm-5 control-label" for="input-start-date">环号：</label>
												<div class="col-sm-7 input-group">
													<input id="input-start-date" type="text" class="form-control"></div>
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
						<table class="table table-condensed table-hover table-responsive">
							<tbody>
								<tr>
									<td>推进环号</td>
									<td>项目编号</td>
									<td>推进日期</td>
									<td>压力设定上限</td>
									<td>压力实际上限</td>
									<td>压力设定下限</td>
									<td>压力实际下限</td>
									<td>压力检测时间</td>
									<td>方量设定值</td>
									<td>方量实际值</td>
									<td>浆液指标</td>
									<td>坍落度</td>
									<td>意外情况</td>
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