<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LunBo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style> table, table tr th, table tr td 
  { border: 1px solid #0094ff; } 
  table
   { width: 500px; min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse; padding: 1px; } 
   </style>
  <body>
  <div style="margin: 10px auto; width: 500px">
       <table border="1">
        <tr>
            <th>ID/img</th>
        </tr>
        <s:iterator value="#request.list">
       
        <tr>
              <td><s:property value="ID" /></td>
         </tr>
         <tr>
         <td>
        
                   <img width="50px" height="50px" src="img/luobotuimg/<s:property value="img" />">
          </td>
         </tr>
         <tr>     
              
             
          </tr>
          <tr>
          <td>
            <form action="Shang" method="post" enctype="multipart/form-data">
            文件：<input type="file" name="file">
               <input type="text" name="ID" value="<s:property value="ID" />" style="display: none;"/>
            <input type="submit" value="上传">
             </form>
        </td>
         </tr>
        </s:iterator>
        </table>
       		 <script type="text/javascript">
		 	   function a(){
		 	   	     if(confirm('确定要修改${ID}吗?')){
		 	   	     	  return true;
		 	   	     }else{
		 	   	     	  return false;
		 	   	     }
		 	   }
		 </script>
		 </div>
  </body>
</html>
