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
							<iframe src="../query-items.jsp" height="40" frameborder="0" scrolling="no" width="100%" marginheight="0" marginwidth="0"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="div-gp-pose" class="row">
				<div class="panel panel-info" style="height:300px;">
					<div class="panel-heading">
						<h3 class="panel-title">盾构/管片姿态信息</h3>
					</div>
					<div class="panel-body">
						<div class="well">
							<div class="btn-group">
								<button type="button" class="btn btn-primary">查询信息</button>
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-pose-date">按时间查询</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-pose-loop">按环号查询</a>
									</li>
								</ul>
							</div>
							<div class="modal fade" id="modal-pose-date">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">盾构/管片姿态信息</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-start-date">请输入时间：</label>
													<div class="col-sm-5 input-group advance-start-date">
														<input id="input-start-date" type="text" class="form-control">
														<span class="input-group-addon glyphicon glyphicon-calendar"></span>
													</div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">查询</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="modal-pose-loop">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">盾构/管片姿态信息</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-measure-loop">请输入环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-measure-loop" type="text" class="form-control"></div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">查询</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-primary">绘制曲线</button>
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-shield-vertical">盾构高程偏差曲线</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-shield-horizontal">盾构平面偏差曲线</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-gp-vertical">管片高程偏差曲线</a>
									</li>
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-gp-horizontal">管片平面偏差曲线</a>
									</li>
								</ul>
							</div>
							<div class="modal fade" id="modal-shield-vertical">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">盾构高程偏差曲线</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-shield-high-start-loop">起始环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-shield-high-start-loop" type="text" class="form-control"></div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-shield-high-end-loop">结束环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-shield-high-end-loop" type="text" class="form-control"></div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">绘制曲线</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="modal-shield-horizontal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">盾构平面偏差曲线</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-shield-horizontal-start-loop">起始环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-shield-horizontal-start-loop" type="text" class="form-control"></div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-shield-horizontal-end-loop">结束环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-shield-horizontal-end-loop" type="text" class="form-control"></div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">绘制曲线</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="modal-gp-vertical">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">管片高程偏差曲线</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-gp-high-start-loop">起始环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-gp-high-start-loop" type="text" class="form-control"></div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-gp-high-end-loop">结束环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-gp-high-end-loop" type="text" class="form-control"></div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">绘制曲线</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
							<div class="modal fade" id="modal-gp-horizontal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">管片平面偏差曲线</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-gp-horizontal-start-loop">起始环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-gp-horizontal-start-loop" type="text" class="form-control"></div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-gp-horizontal-end-loop">结束环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-gp-horizontal-end-loop" type="text" class="form-control"></div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">绘制曲线</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td>推进环号</td>
								<td>项目编号</td>
								<td>设计线性</td>
								<td>设计坡度</td>
								<td>盾构坡度</td>
								<td>盾构转角</td>
								<td>切口里程</td>
								<td>盾构姿态高程切口/盾尾</td>
								<td>盾构姿态平面切口/盾尾</td>
								<td>操作</td>
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
								<td>1</td>
								<td>
									<a id="btn-detail-gp-pose" class="btn btn-success" href="javascript:;">详细</a>
								</td>
							</tr>
						</tbody>
					</table>
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