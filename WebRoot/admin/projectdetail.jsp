<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>管片生产管理信息系统</title>
<link href="../css/produce.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="../themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../themes/icon.css" />
<link rel="stylesheet" type="text/css" href="../css/demo.css" />
<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript">
	function submit() {
		$('#form1').submit();
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

	<h3>该项目信息如下：</h3>
	<s:set name="pro3" value="#request.pro3"></s:set>
	<s:form action="updateProInfo.action" method="post" id="form1">
		<table border="0" cellpadding="5" bgcolor="#D9DFAA"
			style="width:auto;">
			<tr>
				<td>项目名称：</td>
				<td><input name="proInfo.id"
					value="<s:property value="#pro3.id"/>" / type="hidden"> <input
					name="proInfo.proName" style="width:269px;"
					value="<s:property value="#pro3.proName"/>" /></td>

			</tr>
			<tr>
				<td>父项目名称：</td>
				<td><select name="proInfo.proInfo.proName" style="width:269px;"
					value="<s:property value="#pro3.proInfo.proName"/>">
						<option value="0" selected></option>
						<s:iterator value="#request.listpro" id="list1">
							<option value="<s:property value="#list1.id"/>">
								<s:property value="#list1.proName" />
							</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<td>项目经理：</td>
				<td><input name="proInfo.directorId" style="width:269px;"
					value="<s:property value="#pro3.directorId"/>" /></td>
			</tr>
			<tr>
				<td>项目经理电话：</td>
				<td><input name="proInfo.directorPhone" style="width:269px;"
					value="<s:property value="#pro3.directorPhone"/>" /></td>
			</tr>
			<tr>
				<td>项目类型：</td>
				<td><input name="proInfo.proType" style="width:269px;"
					value="<s:property value="#pro3.proType"/>" /></td>
			</tr>
			<tr>
				<td><label>一级安全总监</label></td>
				<td><input name="proInfo.levelOneId" style="width:269px;"
					value="<s:property value="#pro3.levelOneId"/>" /></td>
			</tr>
			<tr>
				<td><label>二级安全总监</label></td>
				<td><input name="proInfo.levelTwoId" style="width:269px;"
					value="<s:property value="#pro3.levelTwoId"/>" /></td>
			</tr>
			<tr>
				<td><label>计划生产管片环数</label></td>
				<td><input name="proInfo.gpCount" style="width:269px;"
					value="<s:property value="#pro3.gpCount"/>" /></td>
			</tr>
			<tr>
				<td><label>生产单位</label></td>
				<td><input name="proInfo.produceUnit" style="width:269px;"
					value="<s:property value="#pro3.produceUnit"/>" /></td>
			</tr>
			<tr>
				<td><label>建设单位</label></td>
				<td><input name="proInfo.buildUnit" style="width:269px;"
					value="<s:property value="#pro3.buildUnit"/>" /></td>
			</tr>
			<tr>
				<td><label>设计单位</label></td>
				<td><input name="proInfo.designUnit" style="width:269px;"
					value="<s:property value="#pro3.designUnit"/>" /></td>
			</tr>
			<tr>
				<td><label>主管单位</label></td>
				<td><input name="proInfo.manageUnit" style="width:269px;"
					value="<s:property value="#pro3.manageUnit"/>" /></td>
			</tr>
			<tr>
				<td><label>施工单位</label></td>
				<td><input name="proInfo.constructUnit" style="width:269px;"
					value="<s:property value="#pro3.constructUnit"/>" /></td>
			</tr>
		</table>
		<table bgcolor="#D9DFAA" style="width:auto;">
			<tr>
				<td><label>项目板块</label> <select name="proInfo.proBlock"
					style="width:100px;">
						<option>公路隧道</option>
						<option selected>越江隧道</option>
						<option>地铁隧道</option>
						<option>穿山隧道</option>
				</select></td>
				<td><label>重大项目</label> <select name="proInfo.importantPro"
					style="width:100px;">
						<option value="1" selected>是</option>
						<option value="0">否</option>
				</select></td>
			</tr>

			<tr>
				<td><label>重点关注</label> <select name="proInfo.keyFocus"
					style="width:100px;">
						<option value="1" selected>是</option>
						<option value="0">否</option>
				</select></td>
				<td width="179px;"><label>项目状态</label> <select
					name="proInfo.proStatus" style="width:100px;">
						<option>在建</option>
						<option>已建</option>
						<option>未建</option>
						<option>运营</option>
						<option>维护</option>
				</select></td>
			</tr>
			<tr>
				<td><label>项目类别</label> <select name="proInfo.proClass"
					style="width:100px;">
						<option>基坑</option>
				</select></td>
				<td><label>省市项目</label> <select name="proInfo.provincePro"
					style="width:100px;">
						<option value="1" selected>是</option>
						<option value="0">否</option>
				</select></td>
			</tr>

		</table>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="submit();">修改</a>
	</s:form>
</body>
</html>
