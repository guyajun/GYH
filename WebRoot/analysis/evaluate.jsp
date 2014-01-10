<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<title>��Ƭ����������Ϣϵͳ</title>
<link href="../css/produce.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../css/demo.css">
<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script>
	function save() {
		var theform = document.getElementById("evaluateForm");
		var date_begin = $('#beginDate').datebox("getValue");
		var date_end = $('#endDate').datebox("getValue");
		if (date_begin.length == 0) {
			alert("��ѡ��ʼ����");
		} else if (date_end.length == 0) {
			alert("��ѡ���������");
		} else {
			theform.submit();
		}
	}
	</script>
	<script>
	function searchs()
	{
	var theform = document.getElementById("searchForm");
	alert(theform);
	theform.submit();
	}
</script>
</head>

<body>
	<jsp:include page="../produce/produce_head.jsp"></jsp:include>
	<div class="box-left">
		<div title="��������" style="width:170px;padding:10px;overflow:hidden;">
			<ul class="easyui-tree">
				<s:action name="testMenu" executeResult="true" />
			</ul>
		</div>
	</div>
	<div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="��ѹǿ��ͳ�Ʒ�������--����" style="width:auto;">
		<div style="width:auto;height:auto;">
			<br />
			<form id="evaluateForm" method="post" action="evaluateForm.action">
				<table>
					<tr>
						<td>���տ�ʼ���ڣ�</td>
						<td><input class="easyui-datebox" name="beginDate"
							id="beginDate" style="width:200px"
							value='${requestScope.beginDate}'></td>
						<td>���ս������ڣ�</td>
						<td><input class="easyui-datebox" name="endDate" id="endDate"
							style="width:200px" value='${requestScope.endDate}'>
						</td>
				</table>
				<br /> <a class="easyui-linkbutton" onclick="save();">�����������</a>
				<br /><br />

			</form>
		</div>
	</div>
	<div style="margin:10px 0;"></div>
	<s:action name="testEvaluate" executeResult="true" />
</body>
</html>