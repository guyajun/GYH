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
<script src="/GP/Web/gp-history/gp-construct-info.js"></script>
</head>
<body>
	<div id="wrap">
		<iframe src="/GP/construct-web/menu.action" width="100%"
			height="160px"></iframe>
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
								<button type="button" class="btn btn-primary dropdown-toggle"
									data-toggle="dropdown">
									<span class="caret"></span> <span class="sr-only">Toggle
										Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-toggle="modal"
										data-target="#modal-loop">按环号查询</a>
									</li>
								</ul>
							</div>
							<div class="btn-group">
								<a href="/GP/construct-web/updateAction.action"
									class="btn btn-primary">更新管片全生命周期表</a>
							</div>
							<div class="modal fade" id="modal-loop">
								<div class="modal-dialog">
									<div class="modal-content">
										<form id="form-query" method="post"
											action="/GP/construct-web/total_getByLoop.action"
											class="form-horizontal" role="form">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">管片施工信息</h4>
											</div>
											<div class="modal-body">
												<div class="form-group">
													<label class="col-sm-4 control-label" for="input-loop">成环环号：</label>
													<div class="col-sm-5 input-group">
														<input id="input-loop" name="tunnelLoop" type="text"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button id="queryButton" type="button"
													class="btn btn-success">查询</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<%
							int i = 0;
						%>
						<table class="table">
							<tbody>
								<tr>
									<td>序号</td>
									<td>环号</td>
									<td>项目编号</td>
									<td>盾构和管片姿态报表</td>
									<td>同步注浆报表</td>
									<td>进场检查表</td>
									<td>下井前检查表</td>
									<td>拼装前检查表</td>
									<td>管片修补表</td>
									<td>东西线(0—东线 1—西线)</td>
								</tr>
								<s:iterator value="#request.list" id="row">
									<tr>
										<td><%=++i%></td>
										<td><s:property value="#row.tunnelLoop" />
										</td>
										<td><s:property value="#row.proId" />
										</td>
										<td><s:property value="#row.shieldPosePic" />
										</td>
										<td><s:property value="#row.synchronousGroutPic" />
										</td>
										<td><s:property value="#row.inCheckPic" />
										</td>
										<td><s:property value="#row.downWellPic" />
										</td>
										<td><s:property value="#row.pzqcheckPic" />
										</td>
										<td><s:property value="#row.segmentrepairPic" />
										</td>
										<td><s:property value="#row.isEast" />
										</td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
						<div class="well">
							<div class="col-sm-offset-4">
								<s:set name="page" value="#request.pager"></s:set>
								<form id="form-page" method="post" action="total_getAll.action">
									<input id="input-page" name="pageNow" style="width:30px;"
										value="<s:property value="#page.pageNow"/>"> /
									<s:property value="#page.totalPage" />
									<s:if test="#page.hasFirst">
										<s:a target="_parent" href="total_getAll.action?pageNow=1">首页</s:a>
									</s:if>
									<s:if test="#page.hasPre">
										<a target="_parent"
											href="total_getAll.action?pageNow=<s:property value="#page.pageNow-1"/>
									">上一页
										</a>
									</s:if>
									<s:if test="#page.hasNext">
										<a target="_parent"
											href="total_getAll.action?pageNow=<s:property value="#page.pageNow+1"/>
								">下一页
										</a>
									</s:if>
									<s:if test="#page.hasLast">
										<a target="_parent"
											href="total_getAll.action?pageNow=<s:property value="#page.totalPage"/>
							">尾页
										</a>
									</s:if>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<iframe src="/GP/Web/footer.jsp" class="col-md-12" frameborder="0"
			scrolling="no" height="60" marginheight="0" marginwidth="0"></iframe>
	</div>
</body>
</html>