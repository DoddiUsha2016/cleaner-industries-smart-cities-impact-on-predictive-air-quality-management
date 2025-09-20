<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User</title>
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
.style5 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
}
.style6 {
	font-size: 16px;
	color: #FF0000;
}
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
		  <li><a href="A_Login.jsp">ADMIN</a></li>
          <li class="active"><a href="U_Login.jsp"><span>USER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="920" height="360" alt="" /><span><big>Sed condimentum justo sit amet urna ornare euismod.</big><br />
          Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> <a href="#"><img src="images/slide2.jpg" width="920" height="360" alt="" /><span><big>Amet urna ornare euismodSed condimentum.</big><br />
          Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> <a href="#"><img src="images/slide3.jpg" width="920" height="360" alt="" /><span><big>Sed condimentum justo sit amet urna ornare euismod.</big><br />
          Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>All Tweets Details...</h2>
		 <%
		  String user=(String)application.getAttribute("uname");
		  String fname=request.getParameter("fname"); 			  
	String s1="",s2="",s3="",s4="",s5="",s6="", pos="positive" ;
	int i=0,count=0,count1=0,poscnt=0,negcnt=0,strcnt=0;
	try
	{
			String sql3="select fname from videos where fname='"+fname+"' ";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			if ( rs3.next() )
			   {
		String	   s10=rs3.getString(1);
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Positive Comments of : <%=s10%></h2></td>
			      </tr>
				  <tr>
					<td width="174" ><div align="left" class="style4 style5">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" ><div align="left" class="style4 style5">
						<div align="center">Comment</div>
					</div></td>
					<td width="128"><div align="left" class="style4 style5">
						<div align="center">Date</div>
					</div></td>
					
				  </tr>
				 
				  <%

				  String query="select * from comment where fname='"+s10+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					s1=rs.getString(4);
					s2=rs.getString(3);
					s3=rs.getString(5);

			   
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2);
			   			 	
							  if ((s2.contains(t2)))
									{
								     
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="U_UserProfile.jsp?value=<%=s1%>&type=<%="user1"%>"> <%=s1%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s2%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s3%></div></td>
							  </tr>
							  
							
							  <%
			
					
			
			
			
			}

					 }
			}
			        %></table> <p>&nbsp;</p>
				<%
			
				
				}
   			  String neg="negative";
			
			String sql30="select fname from tweets where fname='"+fname+"' ";
			Statement st30=connection.createStatement();
			  ResultSet rs30=st30.executeQuery(sql30);
			if ( rs30.next() )
			   {
			 String  s11=rs30.getString(1);
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Negative Comments of : <%=s11%></h2></td>
			      </tr>
				  <tr>
					<td width="174" ><div align="left" class="style4 style5">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" ><div align="left" class="style4 style5">
						<div align="center">Comment</div>
					</div></td>
					<td width="128"><div align="left" class="style4 style5">
						<div align="center">Date</div>
					</div></td>
					
				  </tr>
				 
				  <%

				  String query0="select * from comment where fname='"+s11+"' "; 
				   Statement st0=connection.createStatement();
				   ResultSet rs0=st0.executeQuery(query0);
				while ( rs0.next() )
			   {
				String	s10=rs0.getString(4);
				String	s20=rs0.getString(3);
				String	s30=rs0.getString(5);

			   
			       String sql10="select * from filter where categorie='"+neg+"' ";
					Statement st10=connection.createStatement();
			  		ResultSet rs10=st10.executeQuery(sql10);
					while ( rs10.next() )
			   			{
			   			 String	t10=rs10.getString(1);
			             String t20=rs10.getString(2);
			   			 	
							  if ((s20.contains(t20)))
									{
								     
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="U_UserProfile.jsp?value=<%=s10%>&type=<%="user1"%>"> <%=s10%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s20%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s30%></div></td>
							  </tr>
							  
							
							  <%
			
					
			
			
			
			}

					 }
			}
			        %></table> <p>&nbsp;</p>
				<%
				}
	
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="img"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></a></div></body>
</html>
