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
    
    <title>My JSP 'NeiRong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style> table, table tr th, table tr td 
  { border: 1px solid #0094ff; } 
  table
   { width: 500px; min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse; padding: 1px; } 
   ul{
      margin-left: 130px;
   }
   ul li{
       float: left;
       list-style: none;
       padding: 10px 10px;
   }
  a:HOVER{
      color: #FF0000;
   }
   body{
        position: relative;
   }
   .asdf:HOVER{
        color: #FF0000;
   }
   </style>
  </head>
  
  <body> 
          <div style="width: 600px;position: absolute;top: 0px;left: 200px;z-index: 1;">
           <table border="1">
             <s:iterator value="#request.listt">
             <tr>
                 <th width="50">标题</th>
             <td><s:property value="biaoti" /></td>
             <td rowspan="2" width="50px">
                   <a href="javascript:if(confirm('确定要删除${ID}吗?'))location='ShanChu?shan=${ID}'">删除</a>
             </td>
             </tr>
             <tr>
                 <th width="50px">内容</th>
             <td><s:property value="neirong" /></td></tr>
             </s:iterator>
             </table>
             <ul>
                 <li><a href="NeiRong" tyop="8">1</a></li>
                 <li><a href="NeiRong?uop=5&tyop=4">2</a></li>
                 <li><a href="NeiRong?uop=10&tyop=4">3</a></li>
                 <li><a href="NeiRong?uop=15&tyop=4">4</a></li>
                 <li><a href="NeiRong?uop=20&tyop=4">5</a></li>
             </ul>
          </div>
          <div id="ert" style="width: 400px; height: 400px;box-shadow: 2px 2px 1px 3px  #C0C0C0; position: absolute;top: 0px;left: 250px;background-color: #FFFFFF;z-index: 10;display: none;">
               <form action="Tiannnn" method="post">
                        <div style="width: 300px; height: 40px;margin: 10px auto;text-align: center;">添加</div>
                        <div style="width: 300px; height: 40px;margin: 10px auto; border: 1px solid #0080FF;line-height: 40px;"> 
                                                                                                 标题： <input type="text" name="biaoti" style="width: 200px; height: 35px;border-style: none;background-color:#FFFFFF; ">
                        </div>  
                        <div style="width: 300px;margin: 10px auto; border: 1px solid #0080FF;line-height: 150px;"/> 
                                                                                                内容： <input type="text" name="neirong" style="width: 200px; height: 150px;border-style: none;"/>
                        </div> 
                         <div style="width: 300px; height: 50px;margin: 10px auto;"> 
                             <input class="asdf" type="submit" value="提交" style="width: 300px; height:40px; background-color: #FFFFFF;"/>
                        </div>                                            
               </form>
               <div style="width: 50px; height: 50px;position: absolute;top:0px;right: 0px;" onclick="uio1()">
                   <img  src="img/cha.png" />
               </div>
          </div>
          <div style="width: 50px; height: 50px;border-radius: 50px;background-color: #000000;font-size: 36px; color: #FFFFFF; text-align: center; line-height: 50px" onclick="uio()">+</div>
        <script type="text/javascript">
              function uio(){
                    var ert =document.getElementById("ert");
                    ert.style.display ="block";
              }
             function uio1(){
                    var ert =document.getElementById("ert");
                    ert.style.display ="none";
              }
        </script>
  </body>
</html>
