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
<script src="/GP/Web/gp-history/ftp.js"></script>
</head>
<body>
	<div id="wrap">
		<iframe src="/GP/construct-web/menu.action" width="100%"
			height="160px"></iframe>
		<div class="container">
			<div id="div-advance" class="row">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">FTP上的文件夹</h3>
					</div>
					<div class="panel-body">
						<div class="well">
							<div class="btn-group">
								<a href="#" data-toggle="modal" data-target="#modal-download"
									class="btn btn-success btn-lg">下载文件夹</a>
							</div>
						</div>
						<div class="modal fade" id="modal-download">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">从FTP下载文件</h4>
									</div>
									<div class="modal-body">
										<form id="form-download" action="ftpDownloadFolder.action"
											method="post" class="form-horizontal" role="form">
											<div class="form-group">
												<label class="col-sm-4 control-label" for="input">文件保存路径：</label>
												<div class="col-sm-6 input-group">
													<input id="input" type="text" name="savePath"
														value="E:\test" /> <input id="downloads" name="downloads"
														type="hidden">
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button id="download-btn" type="button"
											class="btn btn-success">下载</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
									</div>
								</div>
							</div>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<td><input id="check-all" class="check-all"
										type="checkbox"></td>
									<td>序号</td>
									<td>文件夹名称</td>
								</tr>
								<%
									int i = 0;
								%>
								<s:iterator value="#request.dadList" id="dad">
									<tr>
										<td><input class="check-one" type="checkbox"
											value="<s:property/>" /></td>
										<td><%=++i%></td>
										<td><a
											href="/GP/construct-web/getSon.action?folder=<s:property/>&ftpPath=<s:property value="#request.ftpPath"/>"><s:property />
										</a>
										</td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
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