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
	function query() {
		$('#form1').submit();
	}
</script>
<script type="text/javascript">
	function add() {	
	if(checkdate() && checkloop() && checkorder())
	{
		$('#form2').submit();
	}
	}
</script>
<script type="text/javascript">
	function del() {
		$('#formdel').submit();
	}
</script>
<script>
	function submitForm2() {
		$('#ff3').submit();
	}
</script>
<script>
function checkloop(){
var date2=document.getElementById("loopnum").value;
if(isNaN(date2) || date2.length==0 )
{alert("含有非法字符，环数只能为数字");
return false;
}else
{return true;}
}
</script>
<script>
function checkdate(){
var date=document.getElementById("producedate").value;
if(date.length != 8 || isNaN(date) )
{alert("生产日期长度有误 或 含有非法字符");
return false;
}else{return true;}
}
</script>
<script>
function checkorder(){
var date3=document.getElementById("order").value;
if(isNaN(date3) || date3.length == 0)
{alert("含有非法字符,班次只能为数字");
return false;
}else{return true;}
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
	<div class="easyui-panel" title="管片状态跟踪" style="width:auto;">
		<form id="form1" method="post" action="queryGp.action">
			<table border="0">
				<tr>
					<td>请输入管片编号查询:</td>
					<td><input id="cc" class="easyui-validatebox" name="str"
						style="width:250px;" /></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="query();">查询</a></td>
				</tr>
			</table>
		</form>
		<br />
		<form id="formdel" method="post" action="gpstatusdel.action">
			请输入删除管片编号:<input name="gpTotalInfo.gpId" style="width:250px;" /> <a
				class="easyui-linkbutton" onclick="del();">删除管片</a>
		</form>
	</div>
	<div class="easyui-panel" title="添加管片编号" style="width:auto;">
		<form id="form2" method="post" action="addgp.action">
			<table border="0">
				<tr>
					<td>生产日期:</td>
					<td><input class="easyui-validatebox" id="producedate" name="producedate"
						style="width:150px;" onblur="checkdate()" /></td>

					<td>环数:</td>
					<td><input class="easyui-validatebox"  id="loopnum" name="loopnum"
						style="width:150px;"  onblur="checkloop()" /></td>
					<td>班次:</td>
					<td><input class="easyui-validatebox"  id="order" name="order"
						style="width:150px;"  onblur="checkorder()"/></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="add();">添加</a></td>
				</tr>
			</table>
		</form>
		<div style="padding:10px 0 10px 0">
			<form action="gptotal.action" id="ff3">
				<a class="easyui-linkbutton" onclick="submitForm2();">更新管片全生命周期</a>
			</form>
		</div>
	</div>
	<div style="width:auto;height:400px;">
		<s:action name="gpStatus" executeResult="true" />
	</div>
</body>
</html>
