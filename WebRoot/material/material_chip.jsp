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
	function saveScan() {
		$('#scan').submit();
	}
	function replace() {
		$('#replace').submit();
	}
	function query() {
		$('#query').submit();
	}
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
	<div style="margin:10px 0;"></div>
	<div id="tt" class="easyui-panel"
		style="auto;height:auto; padding:0px;">
		<div class="easyui-tab" style="width:auto;">
			<div class="easyui-panel" title="芯片浏览查询">
				<form id="query" method="post" action="queryRFID.action">
					<table border="0">
						<tr>
							<td>请输入专用标签或管片编号查询</td>
							<td><input id="cc" class="easyui-validatebox" name="str"
								style="width:250px;" />
							</td>
							<td><a href="javascript:void(0)" class="easyui-linkbutton"
								onclick="query();">查询</a>
							</td>
						</tr>
					</table>
				</form>

				<div>
					<table border="1" cellspacing="1" cellpadding="8" width="900">
						<tr align="center" bgcolor="white" height="30">
							<th>芯片编号</th>
							<th>专用标签</th>
							<th>管片编号</th>
							<th>芯片状态</th>
							<th>启用人</th>
							<th>启用时间</th>
						</tr>


						<s:iterator value="#request.list123" id="rfid">
							<tr>
								<td><s:property value="#rfid.rfidTid" />
								</td>
								<td><s:property value="#rfid.coverId" />
								</td>
								<td><s:property value="#rfid.gpId" />
								</td>
								<td><s:property value="#rfid.status" />
								</td>
								<td><s:property value="#rfid.creator" />
								</td>
								<td><s:property value="#rfid.enableTime" />
								</td>
							</tr>
						</s:iterator>


						<tr>
							<s:set name="page" value="#request.page1"></s:set>
							<s:if test="#page.hasFirst">
								<s:a href="show_RFID.action?pageNow=1">首页</s:a>
							</s:if>
							<s:if test="#page.hasPre">
								<a
									href="show_RFID.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
							</s:if>
							<s:if test="#page.hasNext">
								<a target="_parent"
									href="show_RFID.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
							</s:if>
							<s:if test="#page.hasLast">
								<a
									href="show_RFID.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
							</s:if>
						</tr>

					</table>
				</div>




			</div>
			<div>
				<table id="add" class="easyui-datagrid"
					style="width:auto;height:auto"
					data-options="singleSelect:true,idField:'id'" title="芯片启用">

				</table>

				<div style="padding:5px">
					<form action="scan.action" method="post" id="scan">
						<table>
							<tr>
								<td>请扫描芯片编号：</td>
								<td><input name="scan_rfidTid"
									value="<s:property value="#request.saomiao"/>"
									style="width:300px;"></input> <a href="readTxt.action"
									class="easyui-linkbutton">开始扫描</a></td>
							</tr>
							<tr>
								<td>请输入专用标签：</td>
								<td><input name="scan_coverId"></input></td>
							</tr>
						</table>
					</form>
					<br /> <br /> <a href="javascript:void(0)"
						class="easyui-linkbutton" onClick="saveScan();">保存</a> <a
						href="javascript:void(0)" class="easyui-linkbutton"
						onClick="clear()">清空</a>
				</div>
			</div>

			<div title="芯片替换" class="easyui-panel"
				style="padding:10px 20px 10px 10px">

				<form id="replace" method="post" action="replace.action">
					<table>
						<tr>
							<td>请扫描新芯片编号</td>
							<td><input name="scan_rfidTid"
								value="<s:property value="#request.saomiao1"/>"
								style="width:300px;"></input></td>
							<td><a href="readTxt1.action" class="easyui-linkbutton">开始扫描</a>
							</td>

						</tr>
						<tr>
							<td>请输入旧专用标签</td>
							<td><input id="cc" class="easyui-validatebox"
								name="oldCoverId" style="width:150px;" />
							</td>
							<td>请输入新专用标签</td>
							<td><input id="cc" class="easyui-validatebox"
								name="rfidRefGp.coverId" style="width:150px;" />
							</td>

						</tr>
						<tr>
							<td>记 录 人</td>
							<td><input id="cc" class="easyui-validatebox"
								name="rfidRefGp.creator" style="width:150px;" />
							</td>
							<td>记录时间</td>
							<td><input class="easyui-datebox"
								name="rfidRefGp.createTime" style="width:150px" />
							</td>
						</tr>

					</table>
				</form>
				<div style="padding:5px">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						onClick="replace()">保存</a> <a href="javascript:void(0)"
						class="easyui-linkbutton" onClick="clear()">清空</a>
				</div>

				<br />

			</div>
		</div>
	</div>

</body>
</html>
