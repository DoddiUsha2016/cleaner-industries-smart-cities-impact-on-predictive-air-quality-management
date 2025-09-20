
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FF0000}
-->
            </style>
		      




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,hsign;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(Hc) from datasets ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets  where Hc = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s11=rs.getString(19);
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
		  <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
			
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Fid</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">City</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">Date</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">Time</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">CO_GT</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">PT08_S1_CO</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">NMHC_GT</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">C6H6_GT</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">PT08_S2_NMHC</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">Nox_GT</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">PT08_S3_Nox</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">NO2_GT</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">PT08_S4_NO2</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">PT08_S5_O3</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">T</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">RH</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">AH</span></th>	
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">Air_Quality</span></th>
<th height="63" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1">Hash Code</span></th>
            </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Air Quality Type Chain--->::</span> <%=s11%><br>
			    <span class="style1">Air Quality Type Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
								s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=rs.getString(10);
		s10=rs.getString(11);
		s11=rs.getString(12);
		s12=rs.getString(13);
		s13=rs.getString(14);
		s14=rs.getString(15);
		s15=rs.getString(16);
		s16=rs.getString(17);
		s17=rs.getString(18);
		s18=rs.getString(19);
		s19=rs.getString(20);
								

					
					
					%>
	      </div> <tr>
			
			
              <td  width="74" height="60" align="center" valign="middle" ><span class="style1 style7"><strong>
                <%out.println(s1);%>
              </strong></span></td>
              <td  width="68" height="60" align="center" valign="middle"><span class="style1 style7"><strong>
                <%out.println(s2);%>
              </strong></span></td>
              <td  width="66" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s3);%>
             
              </strong></span></td>
              <td  width="28" height="60" align="center" valign="middle"><span class="style1"><strong>
               <%out.println(s4);%>
              
              </strong></span></td>
              <td  width="30" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s5);%>
              </strong></span></td>
              <td  width="37" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s6);%>
              </strong></span></td>
			  <td  width="41" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s7);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s8);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s9);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s10);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s11);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s12);%>
              </strong></span></td>
			  
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s13);%>
              </strong></span></td>
			  
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s14);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s15);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s16);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s17);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s18);%>
              </strong></span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style1"><strong>
                <%out.println(s19);%>
              </strong></span></td>
			  
            </tr>
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        