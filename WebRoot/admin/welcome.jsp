<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
input {border:none; text-align:center; width:5px;}
</style>
</head>

<body>
<h1>恭喜你！上传成功</h1>
<hr />
<p>系统将在&nbsp;<input type="text" readonly="true" value="1" id="time" style="width:20px;height:30px">&nbsp;秒后返回</p>
<script language="javascript">
 var t = 1;
 var time = document.getElementById("time");
 function fun(){
  t--;
  time.value = t;
  if(t<=0){
   location.href = "javascript:history.back(-1)";
   clearInterval(inter);
  }
 }
 var inter = setInterval("fun()",1000);
</script>

</body>
</html>
