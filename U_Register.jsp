<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register Page</title>
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
.style11 {color: #FFFF00; font-weight: bold; }
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.password.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.password.focus();
return false;
}



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.pic.value;
if(na5=="")

{
alert("choose profile pic");
document.s.pic.focus();
return false;
}


var na8=document.s.address.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.address.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="")

{
alert("Please Enter Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.network.value;
if(na10=="")

{
alert("please Enter Your network");
document.s.network.focus();
return false;
}

var na10=document.s.pincode.value;
if(na11=="")

{
alert("please Enter pincode");
document.s.pincode.focus();
return false;
}


}
</script> 
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
          <li><a href="index.html"><span>HOME PAGE</span></a></li>
		  <li><a href="A_Login.jsp">ADMIN</a></li>
          <li class="active"><a href="U_Login.jsp"><span>USER</span></a></li>
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
          <h2> <span class="style7">Welcome to Registration Form</span></h2>
          <p><img src="images/register.jpg" width="276" height="111" /></p>
          <form action="U_RegIns.jsp" method="post" name="s" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
            
                <label for="name"></label>
                <table width="660" align="left">
                  <tr>
                    <td width="162" height="35" bgcolor="#FF0000"><span class="style11">User Name (required)</span></td>
                    <td width="486"><input id="name" name="userid" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38" bgcolor="#FF0000"><span class="style11">Password (required)</span></td>
                    <td><input type="password" id="password" name="pass" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="39" bgcolor="#FF0000"><span class="style11">
                      <label for="label">Email Address (required)</label>
                    </span></td>
                    <td><input id="email" name="email" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="46" bgcolor="#FF0000"><span class="style11">
                      <label for="label">Mobile Number (required)</label>
                      <label for="label2"></label>
                    </span></td>
                    <td><input id="mobile" name="mobile" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="34" bgcolor="#FF0000"><span class="style11">
                      <label for="label">Date of Birth (required)</label>
                    </span></td>
                    <td><input id="dob" name="dob" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="45" bgcolor="#FF0000"><span class="style11">
                      <label for="gender">Select Gender (required)</label>
                    </span></td>
                    <td><select id="s1" name="gender" style="width:80px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="62" bgcolor="#FF0000"><span class="style11">
                      <label for="label"> Address</label>
                    </span></td>
                    <td><textarea id="address" name="address" rows="3" cols="50"></textarea></td>
                  </tr>
                  <tr>
                    <td height="38" bgcolor="#FF0000"><span class="style11">
                      <label for="label">Enter Pincode (required)</label>
                    </span></td>
                    <td><input id="pincode" name="pincode" class="text" /></td>
                  </tr>
				  <tr>
                    <td height="45" bgcolor="#FF0000"><span class="style11">
                      <label for="gender">Select Group Name(required)</label>
                    </span></td>
                    <td><select id="s2" name="gname" style="width:80px;" class="text">
                        <option>--Select--</option>
                        <option>Companies</option>
                        <option>Friends</option>
                        <option>Education</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="47" bgcolor="#FF0000"><span class="style11">
                      <label for="label">Select Profile Picture (required)</label>
                    </span></td>
                    <td><input type="file" id="pic" name="pic" class="text" /></td>
                  </tr>
                  <tr>
                    <td><input name="submit" type="submit" value="REGISTER" /></td>
                    <td><p>&nbsp;</p>
                        <p align="right"><a href="U_Login.jsp" class="style4">Back</a></p></td>
                  </tr>
            </table>
                
        </form>
		
          <div class="clr"></div>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="A_Login.jsp">Admin</a></li>
            <li><a href="U_Login.jsp">User</a></li>
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
