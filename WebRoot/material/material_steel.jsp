<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<title>管片生产管理信息系统</title>
<link href="../css/produce.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../css/demo.css">
<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript">
	$(function() {

		$.ajax({
			type : "post",
			url : "/GP/material/comboData.action",
			success : function() {
			}
		});
	});
</script>
<script type="text/javascript">
	$(function() {

		$.ajax({
			type : "post",
			url : "/GP/material/steelQualData.action",
			success : function() {
			}
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		var src = $("#image").attr("src");
		var url = src.substring(src.lastIndexOf("/") + 1, src.length);
		var reportId = src.substring(src.lastIndexOf("/") + 1, src
				.lastIndexOf("."));		
		$(".url").attr("value", url);
		$(".reportId").attr("value", reportId);
	});
</script>

</head>

<body>
	<jsp:include page="../produce/produce_head.jsp"></jsp:include>
	<div class="box-left">
		<div title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
			<ul class="easyui-tree">
				<s:action name="testMenu" executeResult="true" />
			</ul>
		</div>
	</div>
	<div>
		<div id="tt" class="easyui-panel" title="请依据下图完善钢筋质量证明书"
			style="width:auto;height:auto; padding:0px;">

			<div title="钢筋质量证明书" style="padding:10px 20px 10px 10px">
				<form id="ff1" action="steelQual.action" method="post">
					<table height="150px">
						<tr>
							<td>钢筋规格(Φ):</td>
							<td><select id="cc" class="easyui-combobox"
								name="steelQual.specification" style="width:150px;">
									<option value="001">6</option>
									<option value="002">10</option>
									<option value="003">12</option>
									<option value="004">16</option>
									<option value="005">18</option>
									<option value="006">20</option>
									<option value="007">22</option>
									<option value="008">25</option>
									<option value="009">28</option>
									<option value="010">32</option>
							</select></td>
							<td>进货数量(t):</td>
							<td><input id="cc" class="easyui-validatebox"
								name="steelQual.purchaseAmount" style="width:150px;" />
							</td>
						</tr>
						<tr>
							<td>使用开始日期:</td>
							<td><input id="dd" class="easyui-datebox"
								name="steelQual.purchaseTime" style="width:150px;"></input></td>
							<td>生产厂家:</td>
							<td><select id="cc" name="steelQual.manufacturer"
								style="width:150px;">
									<s:iterator value="#request['qualdata']" id="cc">
										<option value="<s:property value="#cc.id"/>">
											<s:property value="#cc.name" />
										</option>
									</s:iterator>

							</select></td>

						</tr>
						<tr>
							<td>使用结束日期:</td>
							<td><input id="dd" class="easyui-datebox"
								name="steelQual.useBeginTime" style="width:150px;"></input></td>
						</tr>
						<tr>
							<td><input type="text" class="url" name="steelQual.url"
								style="display:none">
							</td>
							<td><input type="text" class="reportId"
								name="steelQual.reportId" style="display:none">
							</td>
						</tr>
						<tr>
							<td><input type="submit" id="save" value="保存信息">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="easyui-panel" title="请依据下图完善钢筋原材料检测报告"
			style="padding:10px 20px 10px 10px">
			<form id="ff2" action="steelRaw.action" method="post">
				<table height="250px">
					<tr>
						<td width="100">对应质量证书编号</td>
						<td width="142"><select class="easyui-combobox"
							name="steelRaw.mapQualId" style="width:150px; align:left;">
								<s:iterator value="#request.steelQual" id="c1">
									<option value="<s:property value="#c1.consignee"/>">
										<s:property value="#c1.reportId" />
									</option>
								</s:iterator>
						</select></td>
						<td>钢筋规格(Φ):</td>
						<td><select id="cc" class="easyui-combobox"
							name="steelRaw.specification" style="width:150px;">
								<option value="001">6</option>
								<option value="002">10</option>
								<option value="003">12</option>
								<option value="004">16</option>
								<option value="005">18</option>
								<option value="006">20</option>
								<option value="007">22</option>
								<option value="008">25</option>
								<option value="009">28</option>
								<option value="010">32</option>
						</select></td>
					</tr>
					<tr>
						<td width="120">抗拉强度标准(MPa)</td>
						<td><input name="steelRaw.tensileStan" value="40"
							style="width:150px;"></td>
					</tr>
					<tr>
						<td>抗拉强度实测(MPa)</td>
						<td><input class="easyui-validatebox" type="text"
							style="width:150px;" name="tensileValue1" value="40"></input></td>
						<td width="120">抗拉强度是否合格</td>
						<td><select name="steelRaw.tensileIsQulified"
							style="width:150px;">
								<option value="1" selected>是</option>
								<option value="0">否</option>
						</select></td>
					</tr>
					<tr>
						<td>弯曲性能标准</td>
						<td><input name="steelRaw.bendStan" value="180"
							style="width:150px;"></td>
					</tr>
					<tr>
						<td>弯曲性能实测</td>
						<td><input name="steelRaw.bendValue" value="180"
							style="width:150px;"></td>

						<td width="120">弯曲性能是否合格</td>
						<td><select name="steelRaw.bendIsQulified"
							style="width:150px;">
								<option value="1" selected>是</option>
								<option value="0">否</option>
						</select></td>
					</tr>
					<tr>
						<td>重量偏差值标准(%)</td>
						<td><input name="steelRaw.WOffsetStan" value="4"
							style="width:150px;"></td>
					</tr>
					<tr>
						<td>重量偏差值实测(%)</td>
						<td><input class="easyui-validatebox" type="text" value="4"
							style="width:150px;" name="steelRaw.WOffsetValue"></input></td>
						<td width="120">重量偏差值是否合格</td>
						<td><select name="steelRaw.WOffsetIsQulified"
							style="width:150px;">
								<option value="1" selected>是</option>
								<option value="0">否</option>
						</select></td>
					</tr>
					<tr>
						<td><input type="text" class="url" name="steelRaw.url"
							style="display:none">
						</td>
						<td><input type="text" class="reportId" name="steelRaw.reportId"
							style="display:none">
						</td>
					</tr>
					<tr>
						<td><input type="submit" id="save" value="保存信息">
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="preview" class="easyui-panel" title="图片预览"
			style="align:center;width:auto;height:auto">
			<img style="align:center;width:800px;height:1000px" id="image" src="../uploadfile/${request.fileName}">
		</div>
	</div>
</body>
</html>
