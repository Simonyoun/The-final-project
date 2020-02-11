<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link type="text/css" rel="stylesheet" href="css/WangzhanBuju.css" />
		<link type="text/css" rel="stylesheet" href="css/daohangcss.css" />
		<link type="text/css" rel="stylesheet" href="css/luobotucss.css" />
		<link type="text/css" rel="stylesheet" href="css/denglucss.css" />
		<link type="text/css" rel="stylesheet" href="css/neirong.css"/>
		<link type="text/css" rel="stylesheet" href="css/jiewei.css" />
	
		<script type="text/javascript" src="js/move.js"></script>
		<script type="text/javascript" src="js/luobotu.js"></script>
		<script type="text/javascript" src="js/denglu.js"></script>
  </head>
  
	<body>
	         	 <% 
                      Connection con;
   	                  Statement stmt;
   	                  ResultSet rs;
   	                  Class.forName("com.mysql.jdbc.Driver");
   	                  String uri="jdbc:mysql://localhost:3306/tongxeucheng";
   	                  String user="root";
   	                  String password="root";
   	                  con=DriverManager.getConnection(uri,user,password);
   	                  stmt =con.createStatement();
   	              %>
 <script type="text/javascript"> 	
	   function Dko() {
	   var name1= document.getElementById("name1").value;
	   var mima1 = document.getElementById("mima1").value;
	   var ludeangE =document.getElementById("ludeangE");
	   var ludeangF =document.getElementById("ludeangF");
	   if(name1==""){
	   ludeangE.style.display ="block" ;
	  	   alert("账号为空");
	  	   return false;
	   }
	   if(mima1==""){
 	   ludeangF.style.display ="block" ;
	  	   alert("密码为空");
	  	   return false; 
	   }
	   ludeangE.style.display ="none" ;
	   ludeangF.style.display ="none" ;
	   	   return true;
	   } 
	   
	   function Dko1() {
	   var name2= document.getElementById("name2").value;
	   var mima2 = document.getElementById("mima2").value;
	   var ludeangE =document.getElementById("ludeangE");
	   var ludeangF =document.getElementById("ludeangF");
	   if(name2==""){
	   ludeangE.style.display ="block" ;
	  	   alert("账号为空");
	  	   return false;
	   }
	   if(mima2==""){
 	   ludeangF.style.display ="block" ;
	  	   alert("密码为空");
	  	   return false; 
	   }
	   ludeangE.style.display ="none" ;
	   ludeangF.style.display ="none" ;
	   	   return true;
	   } 
 </script>       
		   <div class="denglu" id="dengludiv">
		   	     <div class="deng">
		   	     	   <div class="ludeangA" id="ludeangA">
		   	     	   	     <div>
		   	     	   	     	  <img src="img/hop1.png"/>
		   	     	   	     </div>
		   	     	   	     <div>
		   	     	   	     	  <form action="YongHu" method="post">
		   	     	   	     	  	    <div class="formdiv1">
		   	     	   	     	  	    	<img src="img/zhanghao.png" />
		   	     	   	     	  	    	<input type="text"  name="zhanghao" id="name1" /></div>
		   	     	   	     	  	    <div class="formdiv2">
		   	     	   	     	  	    	<img src="img/mima.png" />
		   	     	   	     	  	    	<input type="password"  name="miam" id="mima1"/></div>
		   	     	   	     	  	    <div class="formdiv3"><input type="submit" value="登录" onclick="return Dko()" /></div>
		   	     	   	     	  	    <div class="formdiv4">
		   	     	   	     	  	    	 <a href="fenye/zhucu.html">
		   	     	   	     	  	    	 	<div>注册</div>
		   	     	   	     	  	    	 </a>
		   	     	   	     	  	    </div>
		   	     	   	     	  </form>
		   	     	   	     </div>
		   	     	   </div>
		   	     	   <div class="ludeangB" id="ludeangB">
		   	     	   	 	<div>
		   	     	   	     	  <img src="img/guan.png"/>
		   	     	   	     </div>
		   	     	   	     <div>
		   	     	   	     	  <form action="Tian" method="post">
		   	     	   	     	  	    <div class="formdivB1">
		   	     	   	     	  	    	<img src="img/zhanghao.png" />
		   	     	   	     	  	    	<input type="text"  name="username"  id="name2" /></div>
		   	     	   	     	  	    <div class="formdivB2">
		   	     	   	     	  	    	<img src="img/mima.png" />
		   	     	   	     	  	    	<input type="password"  name="password" id="mima2" /></div>
		   	     	   	     	  	    <div class="formdivB3"><input type="submit" value="登录" onclick="return Dko1()" /></div>
		   	     	   	     	  	    <div class="formdivB4">
		   	     	   	     	  	    	 <a href="">
		   	     	   	     	  	    	 	<div>注册</div>
		   	     	   	     	  	    	 </a>
		   	     	   	     	  	    </div>
		   	     	   	     	  </form>
		   	     	   	     </div>
		   	     	   </div>
		   	     	   <div class="ludeangC" id="ludeangC">
		   	     	   	       <img src="img/cha.png" />
		   	     	   </div>
		   	     	   <div class="ludeangD" id="ludeangD">点这管理登录</div>
		   	     	   <div class="ludeangE" id="ludeangE">账号为空</div>
		   	     	   <div class="ludeangF" id="ludeangF">密码为空</div>
		   	     	   <div class="ludeangG" id="ludeangG"></div>
		   	     	   <div class="ludeangH" id="ludeangH"></div>
		   	     </div>
		   </div>
		   <div class="daohang" id="daohang">
		   	     <div class="daohangdiv">
		   	         <ul class="daohangUl">
		   	         	  <li class="daohangUl-1"><a href="##">首页</a></li>
		   	    	      <li class="daohangUl-2"><a href="##">制作</a></li>
		   	    	      <li class="daohangUl-3">小狸子</li>
		   	    	      <li class="daohangUl-4"><a href="##">有问就提</a></li>
		   	    	      <li class="daohangUl-5"><a href="##">论坛</a></li>
		   	    	      <li class="daohangUl-6" style="margin-left: 220px;">${zhang}</li>
		   	         </ul>
		   	         <ul class="daohangUlv">
		   	         	 <li id="denglu">
		   	         	 	  <img src="img/denglu.png" />
		   	         	 </li>
		   	         </ul>
		   	     </div>
		   </div>
		   <div class="luobotu" >
			   	     <div class="luobotudiv" id="luobotuid">
		   	     	   <ul class="luobotuul" id="luobotu">
                       <%
   	                      String img ="select * from img";
   	                     ResultSet im =stmt.executeQuery(img);
   	                     
   	                    %>
   	                    <%while(im.next()){ %>
		   	     	   	   <li>
		   	     	   	   	    <img src="img/luobotuimg/<%=im.getString("img") %>" />
		   	     	   	   </li>
		   	     	   	   <%} %>
		   	     	   </ul>
		   	     	   <div class="navdiv" id="navdiv">
		   	     	   	    <a href="javascript:;"></a>
		   	     	   	    <a href="javascript:;"></a>
		   	     	   	    <a href="javascript:;"></a>
		   	     	   	    <a href="javascript:;"></a>
		   	     	   	    <a href="javascript:;"></a>
		   	     	   </div>
		   	     </div>
		   </div>
		   <div class="neirong">
		         <div class="neirongdiva">
		         	    <div>
		         	    	 标题
		         	    </div>
		         	    <div>

   	        <%
   	          String sql ="select * from neip";
   	          rs =stmt.executeQuery(sql);
   	         %>

		         	    	<div>
		         	    	<%while(rs.next()){ %>
		         	    		 <p><a href="#<%=rs.getString("ID") %>"><%=rs.getString("biaoti") %></a></p>
		         	    		<%} %> 
		         	    	</div>
		         	    </div>
		         </div>
		         <div class="neirongdivb">
		         	    <div>
		         	    	内容
		         	    </div>
		         	    <div>
		         	     <%
   	                      rs =stmt.executeQuery(sql);
   	                      %>
		         	         <%while(rs.next()){ %>	    
		         	    	 <div id="<%=rs.getString("ID") %>">
		         	    	 	    <%=rs.getString("neirong") %>
		         	    	 </div>
	                            <%} %> 
		         	    </div>
		         </div>
		        
		   </div>
	 <%
	 im.close();
     rs.close();
     stmt.close();
     con.close();
      %>
		   <div class="jiewei">
		   	      <div>
		   	      	   	<h1>同学城 Student City</h1>
		   	            <ul>
		   	      	        <li>同学城博客、交流平台。</li>
		   	      	        <li>博客、交流平台，用户可以观看平台内容。</li>
		   	      	    </ul>
		   	      	    <ul>
		   	      	        <li><a href="http://www.beian.miit.gov.cn/">桂ICP备19009242号</a></li>
                            <li>转载内容版权归作者及来源网站所有，本站原创内容转载请注明来源.</li>
		   	           </ul>
		   	      </div>
		   </div>
	</body>
</html>
