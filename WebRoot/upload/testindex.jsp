<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
    </head>
    <body>
       
        <form  action="uploadPro.action" method="post" enctype="multipart/form-data">
            <span id="files"> <input type='file' name='upload' multiple />
                <p />
            </span>
            <input type="submit" value="上传" />
        </form>
    </body>

</html>