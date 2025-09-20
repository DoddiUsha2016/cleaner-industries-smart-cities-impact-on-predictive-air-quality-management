<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 18px}
.style7 {color: #FF00FF}
.style8 {
	color: #FF0000;
	font-weight: bold;
	font-size: 24px;
}
.style10 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16px;
}
.style12 {color: #0000FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html"><span class="style4">Toward Cleaner Industries Smart Cities Impact on Predictive Air Quality Management</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="Index.html"><span>HOME PAGE</span></a></li>
		  <li><a href="A_Login.jsp"><span>AMIN</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>USER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="920" height="360" alt="" /><span><big>Sed </big></span></a> <a href="#"><img src="images/slide2.jpg" width="920" height="360" alt="" /><span><big>Amet </big></span></a> <a href="#"><img src="images/slide3.jpg" width="920" height="360" alt="" /><span><big>Sed </big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style7">Welcome User :: <%=(String)application.getAttribute("uname")%></span></h2>
          <p class="style8">Group Name ::<%=(String)application.getAttribute("gname")%></p>
          <p class="style2 "><span class="style10">Group Key ::</span> <span class="style12"><%=(String)application.getAttribute("gsign")%> </span></p>
          <p>&nbsp;</p>
          <div class="clr">
            <p>&nbsp;</p>
            <p><img src="images/User.png" width="565" height="246" /></p>
            <p>&nbsp;</p>
          </div>
          <div class="img"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           		  <p><a href="U_Profile.jsp">View  Profile</a> </p>
				 <p><a href="U_Upload_Datasets.jsp">Upload Datasets</a> </p>
				 
				 <p><a href="U_Find_Air_Quality_Management.jsp">Find Air Quality Management</a> </p>
				 
				  <p><a href="U_Find_Air_Quality_Management_By_Hashcode.jsp">Find Air Quality Management By Hashcode</a> </p>
				  
				   <p><a href="U_Search.jsp">Search Datasets</a> </p>
				  
				  <p><a href="U_Login.jsp">LogOut</a></p>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></a></div></body>
</html>
