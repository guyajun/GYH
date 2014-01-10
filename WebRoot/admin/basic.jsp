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
	function save() {
		$('#ff2').submit();
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
	<div style="margin:0px 0;"></div>
	<div id="tt" class="easyui-panel"
		style="auto;height:768px; padding:0px;">
		<div class="easyui-tabs" style="width:auto;">
			<div title="部门管理" style="padding:0px 0 10px 0px">
				<form id="ff2" method="post">
					<table>
						<tr>
							<td>证明书编号:</td>
							<td><input class="easyui-validatebox" style="width:250px;"
								type="text" name="uid"></input>
							</td>
							<td>钢筋规格(Φ):</td>
							<td><select id="cc" class="easyui-combobox" name="state"
								style="width:250px;">
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
						<tr></tr>

						<tr></tr>
						<tr>
							<td>进货数量(t):</td>
							<td><input id="cc" class="easyui-validatebox" name="state"
								style="width:250px;" /></td>
							<td>生产厂家:</td>
							<td><select id="cc" class="easyui-combobox" name="state"
								style="width:250px;">
									<option value="AL">上海申特型钢有限公司</option>
									<option value="AK">公司1</option>
									<option value="AZ">公司2</option>
									<option value="OH">公司3</option>

							</select></td>

						</tr>
						<tr></tr>
						<tr></tr>
						<tr>
							<td>进货日期:</td>
							<td><input id="dd" class="easyui-datebox"
								style="width:250px;"></input>
							</td>
							<td>收货人:</td>
							<td><select id="cc" class="easyui-combobox" name="state"
								style="width:250px;">
									<option value="AL" selected>马照明</option>
									<option value="AK">杨工</option>
							</select></td>
						</tr>
						<tr>
							<td>投入使用日期:</td>
							<td><input id="dd" class="easyui-datebox"
								style="width:250px;"></input>
							</td>

							<td>上传文件：</td>
							<td><input name="imgfile" type="file" id="imgfile" size="40"
								style="width:320px;"
								onchange="viewmypic(showimg,this.form.imgfile);" />
							</td>
						</tr>
					</table>
				</form>
				<div style="padding:5px">
					<a class="easyui-linkbutton" onclick="save();">保存</a>
				</div>

				<br />
				<div class="easyui-panel" title="图片预览"
					style="width:auto;height:700px;">
					<img name="showimg" id="showimg" src=""
						style="display:none;width:700px;height:600px;" alt="预览图片" />
				</div>


			</div>


			<div title="钢筋原材料检测报告" style="padding:0px 0 10px 0px">
				<form id="ff2" method="post">
					<table height="226">
						<tr>
							<td width="100">文件上传</td>
							<td><input name="imgfile" type="file" id="imgfile"
								onchange="viewmypic(showimg2,this.form.imgfile);" />
							</td>
							<td width="100">报告编号:</td>
							<td width="142"><input class="easyui-validatebox"
								type="text" name="uid"></input>
							</td>
							<td width="100">对应质量证明书编号:</td>
							<td width="142">
							<select class="easyui-combobox"  style="width:130px;" name="uid"></select>
							</td>
						</tr>
						<tr>
							<td>抗拉强度标准:</td>
							<td><input class="easyui-validatebox" type="text" name="uid"></input>
							</td>
							<td>抗拉强度实测:</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
							<td width="120">抗拉强度是否合格</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td>断后伸长率标准:</td>
							<td><input class="easyui-validatebox" type="text" name="uid"></input>
							</td>
							<td>断后伸长率实测:</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
							<td width="120">断后伸长率是否合格</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td>屈服强度标准:</td>
							<td><input class="easyui-validatebox" type="text" name="uid"></input>
							</td>
							<td>屈服强度实测:</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
							<td width="120">屈服强度是否合格</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td>弯曲性能标准:</td>
							<td><input class="easyui-validatebox" type="text" name="uid"></input>
							</td>
							<td>弯曲性能实测:</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
							<td width="120">弯曲性能是否合格</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td>重量偏差值标准:</td>
							<td><input class="easyui-validatebox" type="text" name="uid"></input>
							</td>
							<td>重量偏差值实测:</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
							<td width="120">重量偏差值是否合格</td>
							<td><input class="easyui-validatebox" type="text"
								name="name"></input>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td>检 测 员:</td>
							<td><input class="easyui-validatebox" type="text"
								name="role"></input>
							</td>
						</tr>
					</table>
				</form>
				<div style="padding:5px">
					<a href="javascript:void(0)" class="easyui-linkbutton">保存</a> <a
						href="javascript:void(0)" class="easyui-linkbutton">清空</a>
				</div>
				<br />

				<div class="easyui-panel" title="图片预览"
					style="width:auto;height:700px;">
					<img name="showimg2" id="showimg2" src=""
						style="display:none;width:700px;height:600px;" alt="预览图片" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>
