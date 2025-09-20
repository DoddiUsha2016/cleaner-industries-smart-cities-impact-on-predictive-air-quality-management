<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin</title>
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
.style6 {
	font-size: 16px;
	color: #FF0000;
}
.style7 {color: #FFFF00}
.style9 {font-size: 14px}
.style10 {font-weight: bold}
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
          <li><a href="index.html"><span>Home Page</span></a></li>
		  <li class="active"><a href="A_Login.jsp">ADMIN</a></li>
          <li><a href="U_Login.jsp"><span>USER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="920" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="920" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="920" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Admin Login </h2>
		  <p><table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#00FFFF"><td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style9 style7 style14 style3" style="	margin-left:20px;"><strong>Commented By</strong></div></td>
			<td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style9 style7 style14 style3" style="margin-left:20px;"><strong>Comment</strong></div></td>
			<td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style9 style7 style14 style3" style="margin-left:20px;"><strong>Date</strong></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String user=(String)application.getAttribute("uname");
					    String iname=request.getParameter("vname");
						
						
						int i=0;
						try 
						{
							String sql="select * from vcomment where fname='"+iname+"' ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								String s1=rs.getString(4);
								String s2=rs.getString(5);
								String s3=rs.getString(6);
		
					%>
			
			
		<tr>
			
			  <td  width="86" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="A_UserProfile.jsp?value=<%=s2%>&type=<%="video"%>"><%=s2%></a></div></td>
			   <td  width="109" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
			    <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s3);%></div></td>
      </tr>
<%					
					}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">LogOut</a></li>
          </ul>
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
