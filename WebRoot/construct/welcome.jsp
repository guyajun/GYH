<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
input {border:none; text-align:center; width:5px;}
</style>
<title>欢迎登录</title>
</head>

<body>
<p>&nbsp;</p>

<h2>欢迎用户：<%=session.getAttribute("loginName") %></h2>
<hr />
<p>系统将在&nbsp;<input type="text" readonly="true" value="3" id="time" style="width:20px;height:30px">&nbsp;秒后跳转到主页</p>
<script language="javascript">
 var t = 3;
 var time = document.getElementById("time");
 function fun(){
  t--;
  time.value = t;
  if(t<=0){
   location.href = "../construct/dailywork.jsp";
   clearInterval(inter);
  }
 }
 var inter = setInterval("fun()",1000);
</script>

</body>
</html>
