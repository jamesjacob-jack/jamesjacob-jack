<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Light Old Age Home display</title>
<style>
html{
    height:100%;
 }
body{
background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin:0;
    background-size: cover;	
    background-color:#3AAFA9;
width:100%;
    height:100%;
}
img{
	float:left;
	margin-left:10px;
	border-radius:54px;
}
.head{
	margin-bottom:30px;
	margin-left:35%;
	float:left;
	font-size:40px;
	color:navy;
}
#back{
	width:200px;
	height:30px;
	border-radius:20px;
	margin-left:90px;
	margin-bottom:80px;
	margin-top:10px;
	background: rgb(131,58,180);
background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(7,17,24,1) 0%, rgba(44,220,223,1) 100%,
                            rgba(64,232,30,1) 100%, rgba(26,174,217,1) 100%);
	border:solid black 2px;
	color:white;
	
}
#back:hover{
	background: rgb(131,58,180);
background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(44,220,223,1) 0%, rgba(7,17,24,1) 100%,
                            rgba(64,232,30,1) 100%, rgba(26,174,217,1) 100%);
                             box-shadow:0 5px 20px rgba(0,0,0,.7);
}
body{
     
width:100%;
height:100%;

}
.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 25px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #777;
}
#but{
  width:500px;
}
#subdiv{
   background-color:blue;
   position:;
}
table{
   
 }
table th{
   background-color:#777;
   text-align:right;
   font-size:20px;
   color:navy;
}
table td{
   font-size:20px;
   color:black;
    background-color:#777;
    border-right:2px solid black;
}
</style>
</head>
<body>
<div class="bg">
<img src="IMG-20211024-WA0006.jpg" width="100" height="100" ><br>
<center><p class="head"> LIGHT OLD AGE HOME</p></center><br/>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LightOldAgeHome","root","");
Statement st=con.createStatement();
ResultSet rs;
rs=st.executeQuery("select* from oldageHome");

while(rs.next()){
	out.println("<button type='button' class='collapsible'>"+rs.getString(1)+"."+rs.getString(2)+"</button>");
	 
	 
	 out.println("<div class='content' ><table  cellpadding=8 cellspacing=0 color='blue' align='center'><tr><th>Name :</th><td>"+rs.getString(2)+"</td><th>Guardian :</th><td>"+rs.getString(8)+
			 "</td><th>Blood Group :</th><td>"+rs.getString(14)+"</td><th>Reason :</th><td>"+rs.getString(20)+
			 "</td></tr><tr><th>Husband/Wife Name :</th><td>"+rs.getString(3)+"</td><th>Guardian Phone :</th><td>"+rs.getString(9)+
			 "</td><th>Address :</th><td>"+rs.getString(15)+"</td><th>Heirs1 :</th><td>"+rs.getString(21)+
			 "</td></tr><tr><th>Father's Name :</th><td>"+rs.getString(4)+"</td><th>Gender :</th><td>"+rs.getString(10)+
			 "</td><th>Education :</th><td>"+rs.getString(16)+"</td><th>Heirs2 :</th><td>"+rs.getString(22)+
			 "</td></tr><tr><th>Father's Phone :</th><td>"+rs.getString(5)+"</td><th>Age :</th><td>"+rs.getString(11)+
			 "</td><th>Health Issue :</th><td>"+rs.getString(17)+"</td><th>Heirs3 :</th><td>"+rs.getString(23)+
			 "</td></tr><tr><th>Mother's Name :</th><td>"+rs.getString(6)+"</td><th>DOB :</th><td>"+rs.getString(12)+
			 "</td><th>Food :</th><td>"+rs.getString(18)+"</td><th>Heirs3 :</th><td>"+rs.getString(24)+
			 "</td></tr><tr><th>Mother's Phone :</th><td>"+rs.getString(7)+"</td><th>Date of Joinning :</th><td>"+rs.getString(13)+
			 "</td><th>Concession :</th><td>"+rs.getString(19)+"</td><th>Heirs5 :</th><td>"+rs.getString(25)+"</td></tr></table></div>");
}
st.close();
con.close();
%>

<center><input type="button" value="Back" id="back" onClick="history.back()"></center>
<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
</div>
</body>
</html>