<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../css/demo.css">
</head>
<body>

	<table>
		<tr>
			<td>
				<div class="easyui-panel"
					style="width:420px;height:260px;padding:10px;" title="基本信息">
					<s:iterator value="#request['infos']" id="c4">
						<table width="300px" align="center">
							<tr>
								<td><label>项&nbsp;&nbsp;目&nbsp;&nbsp;
										名&nbsp;&nbsp;称&nbsp;:</label> <!--   <input name="pro_process" id="pro_process" width="269px" value=""> -->
									<s:property value="#c4.proName" /></td>
							</tr>
							<tr>
								<td><label>项&nbsp;&nbsp;目&nbsp;&nbsp;描&nbsp;&nbsp;述&nbsp;&nbsp;</label>
									<textarea name="textarea"
										style="width:300px;height:160px; font-size:125%; resize:none;">  
									<s:property value="#c4.description" />
									</textarea></td>
							</tr>
						</table>
					</s:iterator>
				</div></td>
			<td rowspan="2">
				<div class="easyui-panel"
					style="width:700px;height:550px;padding:10px;" title="地理位置">
					<iframe width="670" height="470" frameborder="0" scrolling="no"
						marginheight="0" marginwidth="0"
						src="http://ditu.google.cn/maps?f=q&amp;source=s_q&amp;hl=zh-CN&amp;geocode=&amp;q=%E4%B8%8A%E6%B5%B7%E7%BA%A2%E6%A2%85%E5%8D%97%E8%B7%AF&amp;aq=&amp;sll=31.763239,119.971175&amp;sspn=0.025724,0.045447&amp;brcurrent=3,0x35b2633be24b87d5:0xde5e102b16be8828,0%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E4%B8%8A%E6%B5%B7%E8%99%B9%E6%A2%85%E5%8D%97%E8%B7%AF&amp;ll=31.08491,121.438362&amp;spn=0.20729,0.363579&amp;t=m&amp;z=12&amp;output=embed"></iframe>
					<br />
					<small><a
						href="http://ditu.google.cn/maps?f=q&amp;source=embed&amp;hl=zh-CN&amp;geocode=&amp;q=%E4%B8%8A%E6%B5%B7%E7%BA%A2%E6%A2%85%E5%8D%97%E8%B7%AF&amp;aq=&amp;sll=31.763239,119.971175&amp;sspn=0.025724,0.045447&amp;brcurrent=3,0x35b2633be24b87d5:0xde5e102b16be8828,0%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E4%B8%8A%E6%B5%B7%E8%99%B9%E6%A2%85%E5%8D%97%E8%B7%AF&amp;ll=31.08491,121.438362&amp;spn=0.20729,0.363579&amp;t=m&amp;z=12"
						style="color:#0000FF;text-align:left">查看大图</a>
					</small>
				</div></td>
		</tr>
		<tr>
			<td>
				<div class="easyui-panel"
					style="width:420px;height:240px;padding:10px;" title="项目信息">
					<s:iterator value="#request['infos']" id="c5">
						<table width="320px" align="center">
							<tr>
								<td>项目经理</td>
								<td><input name="pro_process" id="pro_process"
									style="width:80px;"
									value="<s:property value="#c4.directorId" />"></td>
								<td width="80px;">一级安全总监</td>
								<td><input name="pro_process" id="pro_process"
									style="width:60px;"
									value="<s:property value="#c4.levelOneId" />"></td>
							</tr>

							<tr>
								<td>经理电话</td>
								<td><input name="pro_process" id="pro_process"
									style="width:80px;"
									value="<s:property value="#c4.directorPhone" />"></td>

								<td width="30px;">二级安全总监</td>
								<td><input name="pro_process" id="pro_process"
									style="width:60px;"></td>
							</tr>
						</table>
						<table width="320px" align="center">
							<tr>
								<td>管片生产 <input name="pro_process" id="pro_process"
									style="width:210px;"
									value="<s:property value="#c4.produceUnit" />"></td>
							</tr>
							<tr>
								<td>建设单位 <input name="pro_process" id="pro_process"
									style="width:210px;"
									value="<s:property value="#c4.buildUnit" />"></td>
							</tr>
							<tr>
								<td>设计单位 <input name="pro_process" id="pro_process"
									style="width:210px;"
									value="<s:property value="#c4.designUnit" />"></td>
							</tr>
							<tr>
								<td>主管单位 <input name="pro_process" id="pro_process"
									style="width:210px;"
									value="<s:property value="#c4.manageUnit" />"></td>
							</tr>
							<tr>
								<td>施工单位 <input name="pro_process" id="pro_process"
									style="width:210px;"
									value="<s:property value="#c4.constructUnit" />"></td>
							</tr>
						</table>
					</s:iterator>
				</div></td>
		</tr>
	</table>


</body>
</html>
