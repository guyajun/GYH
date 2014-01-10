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
	function save1() {
	var name = document.getElementById("fname").value;
	if(name.length > 0 ){
		$('#ff1').submit();
	}else{
	alert("请输入厂家名称！")
	}
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
	<div id="tt" class="easyui-panel" title="生产厂家管理" style="width:auto;height:auto; padding:0px;">
		
			<div  style="padding:10px 20px 10px 10px">
				<form id="ff1" action="manufacture.action" method="post" enctype="multipart/form-data">
					<table>
						<tr>
							<td>生产厂家名称:</td>
							<td><input  class="easyui-validatebox" style="width:150px;"
								type="text" id="fname" name="manufacturer.name"></input>
							</td>
							<td>到期日期:</td>
							<td>
								<input  class="easyui-datebox" name="manufacturer.date"
								style="width:150px;"></input>
							</td>
							
						</tr>
					</table>
					<s:file name="upload" label="许可证上传"></s:file>
				</form>
				
				<div style="padding:5px">
					<a class="easyui-linkbutton" onclick="save1();">上传并保存</a>
				</div>
			</div>
</div>
<div id="tdel" class="easyui-panel" title="删除厂家" style="width:auto;height:auto; padding:0px;">
<form id="formdel" method="post" action="manufacturerdel.action">
请输入生产厂家编号:<input name="manufacturer.id" /><a class="easyui-linkbutton" onclick="$('#formdel').submit();">删除</a>
</form>
</div>
<div id="tt2" class="easyui-panel" title="生产厂家" style="width:auto;height:auto; padding:0px;">
<table id="tt" class="easyui-datagrid"  style="width:auto;height:250px">
		    <thead>
			    <tr>
				    <th data-options="field:'rfidTid',width:100" align="center">编号</th>
				    <th data-options="field:'coverId',width:250" align="center">生产厂家</th>
				    <th data-options="field:'gpId',width:250" align="center">到期日期</th>
				    <th data-options="field:'status',width:250" align="center">许可证</th>
			    </tr>
		    </thead>
		    <s:iterator  value="#request.qualdata" id="c2">
		    <tr>
   		    <td width="250px"><s:property value="#c2.id" /></td> 
		     <td><s:property value="#c2.name" /></td>
	         <td width="250px"><s:property value="#c2.date" /></td>
	        <td width="250px"><a href="../uploadfile/manufacture/<s:property value="#c2.url"></s:property>"><s:property value="#c2.url"></s:property></a></td>
		    </tr>
		    </s:iterator>
	    
	</table>
</div>
</body>
</html>
