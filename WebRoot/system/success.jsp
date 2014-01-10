<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
input {border:none; text-align:center; width:5px;}
</style>
<title>数据库更新</title>
</head>

<body>
<p>&nbsp;</p>

<h2>数据库更新成功</h2>
<hr />
 
<script language="javascript">
 var t = 1;
 var time = 1;
 function fun(){
  t--;
  time.value = t;
  if(t<=0){
   location.href = "../system/synchronization.jsp";
   clearInterval(inter);
  }
 }
 var inter = setInterval("fun()",1000);
</script>

</body>
</html>

