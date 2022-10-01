<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search page</title>
<style>
body{
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin:0;
    background-size: cover;
    background:none;	
    background-color:#3AAFA9;
    width:auto;
    height:auto;
    overflow:auto;
}
h1{
 margin:0;
 padding:0;
 inline-block:block;
}
.box1{
	background:rgba(255,255,255,0.1);
	backdrop-filter:blur(9px);
	box-shadow:0 5px 20px rgba(0,0,0,.7);
	position:absolute;
	width:1400px;
	height:680px;
	top:95px;
	left:200px;
	border-radius:10px;
	border:1px solid black;
}
.box1:hover{
    border:2px solid red;
}
img{
    margin-right:0;
	margin-left:10px;
	border-radius:54px;
}
input{
	margin-bottom:5px;
	outline:none;
	color:red;
	margin-top:2px;
	border:none;
	border-bottom:2px solid black;
	background:none;
	font-size:20px;
	font-style:bold;
	
}
.label{
	margin-left:25px;
	margin-top:18px;
	font-style:bold;
	font-weight:bold;
	font-size:23px;
}
.butt{
	width:200px;
	height:30px;
	border-radius:20px;
	margin-top:20px;
	margin-left:300px;
	background: rgb(131,58,180);
background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(7,17,24,1) 0%, rgba(44,220,223,1) 100%,
                            rgba(64,232,30,1) 100%, rgba(26,174,217,1) 100%);
	border:solid black 2px;
	color:white;
	
}
.butt:hover{
	background: rgb(131,58,180);
background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(44,220,223,1) 0%, rgba(7,17,24,1) 100%,
                            rgba(64,232,30,1) 100%, rgba(26,174,217,1) 100%);
                             box-shadow:0 5px 20px rgba(0,0,0,.7);
}
</style>
</head>
<body>

<img src="IMG-20211024-WA0006.jpg" width="100" height="100" >

<table  align="center">
<%
String uid=request.getParameter("UID");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LightOldAgeHome","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select* from oldageHome where Id='"+uid+"'");

while(rs.next()){
    out.println("<div class='box1'><form action='update.jsp' autocomplete='off'><label class='label' for='id'>Id:</label><input type='text' name='id' id='id' value="+rs.getString(1)+"><br/><label class='label' for='name'>Name:</label><input type='text' name='name' id='name'  value="+rs.getString(2)+"><br/><label class='label' for='spouse'>Husband/wife Name:</label> <input type='text' name='spouse' id='spouse' value="+rs.getString(3)+"><br/><label class='label' for='father'>Father s Name:</label><input type='text' name='father' id='father' value="+rs.getString(4)+">PHONE NO:<input type='text' name='father_phone' id='father_phone' value="+rs.getString(5)+"><br/>   <label class='label' for='mother'>Mother s Name:</label><input type='text' name='mother' id='mother' value="+rs.getString(6)+">PHONE NO:<input type='text' name='mother_phone' id='mother_phone' value="+rs.getString(7)+"><br/><label class='label' for='mother'>Guardian Name:</label><input type='text' name='guardian' id='guardian' value="+rs.getString(8)+">PHONE NO:<input type='text' name='guardian_phone' id='guardian_phone' value="+rs.getString(9)+"><br/>  <label class='label' >Gender:</label><input type='radio' name='gender' id='radio1' class='radio' value='Male' required>Male  <input type='radio' name='gender' id='radio2' class='radio' value='Female' required>Female<br/> <label class='label' for='age'>Age:</label><input type='text' name='age' id='age' value="+rs.getString(11)+"><br/>  <label class='label' for='dob'>Date of Birth:</label><input type='text' name='dob' id='dob' value="+rs.getString(12)+"><br/><label class='label' for='doj'>Date of Joining:</label><input type='text' name='doj' id='doj' value="+rs.getString(13)+"><br/><label class='label' for='ten'>Blood Group:</label><select name='bloodg' id='bloodg'><option value='A+'>A+</option><option value='A-'>A-</option><option value='B+'>B+</option><option value='B-'>B-</option><option value='AB+'>AB+</option><option value='AB-'>AB-</option><option value='O+'>O+</option><option value='O-'>O-</option></select> <br/><label class='label' for='address'>Address:</label><input type='text' name='address' id='address' value="+rs.getString(15)+"><br/><label class='label' for='education'>Education:</label><input type='text' name='education' id='education' value="+rs.getString(16)+"><br/><label class='label' for='hi'>Health Issue:</label><input type='text' name='hi' id='hi' value="+rs.getString(17)+"><br/><label class='label' >Food:</label><input type='radio' name='food' id='radio1' class='radio' value='Vegitarian' required>Vegitarian<input type='radio' name='food' id='radio2' class='radio' value='Non Vegitarian' required>Non Vegitarian<br/><label class='label' for='concession'>Govt.Concession:</label><input type='text' name='concession' id='concession' value="+rs.getString(19)+"><br/><label class='label' for='reason'>Joining Reasons:</label><input type='text' name='reason' id='reason' value="+rs.getString(20)+" required><br/><label class='label' for='heirs'>Heirs:</label>1.<input type='text' class='h1' name='heirs1' id=heirs1' value="+rs.getString(21)+" >2.<input type='text' class='h1' name='heirs2' id='heirs2' value="+rs.getString(22)+">3.<input type='text' class='h1' name='heirs3' id='heirs3' value="+rs.getString(23)+">4.<input type='text' class='h1' name='heirs4' id='heirs4' value="+rs.getString(24)+">5.<input type='text' class='h1' name='heirs5' id='heirs5' value="+rs.getString(25)+"><br/><input type='button' value='Back' class='butt' onClick='history.back()'><input type='SUBMIT' value='UPDATE' class='butt'></form></div>");
}

st.close();
con.close();
%>
</table>

</body>
</html>