<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String uname=null;     
        			String pass=null;	
					String email=null;
					String mno=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String sk="Rejected";
					String gender=null;
					String gname=null;
					String pincode=null;
					String utype=null;
					
				
					FileInputStream fs=null;
					File file1 = null;	
					String type=request.getParameter("type");
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pincode"))
							{
								pincode=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gname"))
							{
								gname=multi.getParameter(paramname);
							}
													
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
						 
         
    	
    	
						
			 			String query1="select * from user  where username='"+uname+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		out.print("User Name Already Exist");
							
							%>
							<p><a href="U_Login.jsp">Click here to Login</a>         <a href="index.html">Home</a> </p>
				
							
							<%
					   }
					   else
					   {
					   //Generate Group Sign Based on Group Name
					   
								String namefile="filename.txt";
								PrintStream p=new PrintStream(new FileOutputStream(namefile));
								p.print(new String(gname));
								
								
								MessageDigest md=MessageDigest.getInstance("SHA1");
								FileInputStream fis11=new FileInputStream(namefile);				
								DigestInputStream dis1=new DigestInputStream(fis11,md);
								BufferedInputStream bis1=new BufferedInputStream(dis1);				
								while(true)
								{
								
									int b1=bis1.read();
									if(b1==-1)
									
									break;
								}
								
								BigInteger bi1=new BigInteger(md.digest());
								String spl1=bi1.toString();
								String gsign=bi1.toString(16);
					   
					   
					
					   
				String status="waiting";
				PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,dob,gender,address,pincode,gname,image,status,gsign) values(?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,dob);
						ps.setString(6,gender);
						ps.setString(7,addr);
						ps.setString(8,pincode);
						ps.setString(9,gname);
				
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));	
						ps.setString(11,status);
						ps.setString(12,gsign);		
						
						if(f == 0)
							ps.setObject(11,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(11,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						if(x>0)
						{
							request.setAttribute("msg","successfull");
							out.print("Registered Successfully");
							
			%>
			<p><a href="U_Login.jsp">Click here to Login</a>         <a href="index.html">Home</a> </p>

			
			<%
					   }
			   }
		}
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
