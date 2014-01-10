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
	function submitForm()
	{
	$('#fileForm').submit();
	}
	</script>
	
	 <script type="text/javascript">   
        //添加一行<tr>
        function add(){
            var content = "<tr><td>";
            content += "<label>上传的文件：</label><input type='file' name='upload'>";
            content +="</td></tr>";
            $("#fileTable").append(content);
        }
        
        //删除当前行<tr>
        function remove(obj) {
            $(obj).parent().parent().remove();
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
	<div class="easyui-panel" title="文件上传" style="width:auto">
		<div style="padding:10px 0 10px 0">
   <form id="fileForm" action="uploadPro.action" method="post" enctype="multipart/form-data">
        <table id="fileTable">
            <tr>
                <td>
              <label>上传的文件：</label><input type="file" name="upload" multiple>
                </td>
                <td>
                <label>文件类型选择:：</label><select  name="choosefile">
                <option value="1">管片钢筋加工质量检查表</option>
                <option value="2">管片钢筋骨架制作质量检查记录表</option>
                <option value="3">管片钢模质量检查记录表</option>
                <option value="4">管片外观及尺寸偏差质量检查记录表</option>
                <option value="5">管片蒸养记录</option>
                <option value="6">管片水养护记录</option>
                <option value="7">钢筋骨架半成品抽查记录</option>
                <option value="8">隧道构件分公司管片质量证明书</option>
                <option value="9">管片检漏记录</option>
                <option value="10">混泥土浇注记录</option>
                 <option value="11">水平拼装</option>
                </select>
                </td>
            </tr>
        </table>
   </form>
    <a class="easyui-linkbutton" id="load"  onclick="submitForm();">上传</a>
    </div>
    </div>
</body>
</html>