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
	<script src="/GP/Web/gp-history/gp-construct-info.js"></script>
</head>
<body>
	<div id="wrap">
		<iframe src="/GP/construct-web/menu.action" width="100%" height="160px"></iframe>
		<div class="container">
			<div id="div-advance" class="row">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">管片施工信息</h3>
					</div>
					<div class="panel-body">
						<div class="well">
							<div class="btn-group">
								<button type="button" class="btn btn-primary">查询施工端管片信息</button>
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="#" data-toggle="modal" data-target="#modal-loop">按环号查询</a>
									</li>
								</ul>
							</div>
							<div class="modal fade" id="modal-loop">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">管片施工信息</h4>
										</div>
										<div class="modal-body">
											<form id="form-query" method="post" action="/GP/construct-web/total_getByLoop.action" class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-loop">请输入环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-loop" name="loop" type="text" class="form-control"></div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button id="queryButton" type="button" class="btn btn-success">查询</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<td>生产流水环号</td>
									<td>成环后环号</td>
									<td>成环位置</td>
									<td>吊装情况</td>
									<td>吊装结果</td>
									<td>拼装情况</td>
									<td>拼装结果</td>
									<td>管片姿态高程</td>
									<td>管片姿态平面</td>
									<td>管片里程</td>
									<td>管片横径</td>
									<td>管片竖径</td>
									<td>巡检</td>
								</tr>
								<tr>
									<td>
										<s:property value="#request.downWell.produceLoop"/>
									</td>
									<td>
										<s:property value="#request.gpTotalInfo.tunnelLoop"/>
									</td>
									<td>
										<s:property value="#request.gpTotalInfo.tunnelLoopLocation"/>
									</td>
									<td>
										<s:property value="#request.downWell.condition"/>
									</td>
									<td>
										<s:property value="#request.downWell.result"/>
									</td>
									<td>
										<s:property value="#request.pzq.condition"/>
									</td>
									<td>
										<s:property value="#request.pzq.result"/>
									</td>
									<td>
										<s:property value="#request.pose.gpVertical"/>
									</td>
									<td>
										<s:property value="#request.pose.gpPlane"/>
									</td>
									<td>
										<s:property value="#request.pose.gpMiliage"/>
									</td>
									<td>
										<s:property value="#request.pose.transverseDiameter"/>
									</td>
									<td>
										<s:property value="#request.pose.shaftDiameter"/>
									</td>
									<td>
										<s:if test="#request.xunJian.isPhoto=='0'">
											<s:property value="#request.xunJian.pipeStatus"/>
										</s:if>
										<s:else>
											照片呢？
										</s:else>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
			<iframe src="/GP/Web/footer.jsp" class="col-md-12" frameborder="0" scrolling="no" height="60"
						marginheight="0" marginwidth="0"></iframe>
	</div>
</body>
</html>