<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
  <title>管片生产管理信息系统</title>
   <link href="../css/produce.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
	<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
	
	<script>
		function dynamic(){
		var t=document.getElementById('tang');
			var s=t.value;
			if(s == '10020')
			{
			tt1.style.display="";
			tt2.style.display="none";
			} else
			if(s == '10021')
			{
			tt1.style.display="none";
			tt2.style.display="";
			} else
			{
			tt1.style.display="";
			tt2.style.display="none";
			}
		}
				
	</script>
	
  </head>
  
  <body>
   <jsp:include page="../produce/produce_head.jsp"></jsp:include>
    <div class="box-left">
    <div  title="生产管理" style="width:170px;padding:10px;overflow:hidden;">
  <ul class="easyui-tree">
  <s:action name="testMenu" executeResult="true" />
  </ul>
  </div>
  </div>
  <div style="margin:10px 0;"></div>
	<div class="easyui-panel" title="模型显示" style="width:auto">
	<table>
	<tr>
	<td colspan="2" width="600">
		<div style="overflow:hidden">
	<embed src="../images/standard/v8.avi"
				width="100%" 
    			height="400"
				autostart="true" 
				loop="false" align="center"				
				controls="CONSOLE">	</div>
</td>
<td style="height:400px;">
         查看类型：<select id="tang" onchange="dynamic();">
		 <option value="10020">单个管片</option>
		 <option value="10021">成环管片</option>
		 </select>
		  <table width="200px;" id="tt1">
            <tr>
              <td><img src="../images/standard/biaozhun.png" width="200" height="160" /></td>
              <td><img src="../images/standard/fengding.png" width="200" height="160" /></td>
            </tr>
            <tr>
              <td><div align="center">标准片</div></td>
              <td><div align="center">封顶片</div></td>
            </tr>
			<tr>
			 <td><img src="../images/standard/linjies8.png" width="200" height="160" /></td>
              <td><img src="../images/standard/linjies9.png" width="200" height="160"/></td>
			</tr>
			<tr>
			<td><div align="center">邻接片s8</div></td>
              <td><div align="center">邻接片s9</div></td>
			</tr>
			</table>
			
			<table  width="200px" id="tt2" style="display:none;">
            <tr>
              <td><img src="../images/standard/quanhuanding.png" width="200" height="160" /></td>
              <td><img src="../images/standard/quanhuanqian.png" width="200" height="160" /></td>
			  </tr>
            <tr>
              <td><div align="center">全环（顶视）</div></td>
              <td><div align="center">全环（前视）</div></td>
            </tr>
			<tr>
              <td><img src="../images/standard/quanhuanzuo.png" width="200" height="160" /></td>
              <td><img src="../images/standard/quanhuan2.png" width="200" height="160" /></td>
            </tr>
			<tr>
			 <td><div align="center">全环（左视）</div></td>
              <td><div align="center">全环</div></td>
			</tr>
          </table>
		  </td>
		  </tr>
		  </table>
		  
		</div>
</body>
</html>
