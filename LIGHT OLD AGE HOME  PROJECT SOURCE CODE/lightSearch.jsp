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
	background-color:teal;
}
img{
	margin-left:10px;
	border-radius:54px;
}
.head{
    margin-top:0;
	margin-bottom:10px;
	margin-left:45px;
	font-size:25px;
	font-weight:bold;
	color:white;
}
table{
    border-collapse:collapse;
    border:none;
    border-color:teal;
}
table th{
    font-size:25px;
    text-align:left;
    margin-left:20px;
}
table td{
     padding-left:5px;
     font-size:25px;
}
.butt{
	width:200px;
	height:30px;
	border-radius:20px;
	margin-left:120px;
	margin-top:10px;
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
<div>
<img src="IMG-20211024-WA0006.jpg" width="100" height="100" ><br>
<center><h1 class="head">LIGHT OLD AGE HOME</h1></center><br/>
<table  align="center">
<%
String id=request.getParameter("searchid");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LightOldAgeHome","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select* from oldageHome where Id='"+id+"'");

while(rs.next()){
	out.println("<tr><th>1.ID:</th><td>"+rs.getString(1)+"</td></tr><tr><th>1.Name:</th><td>"+rs.getString(2)+"</td></tr><tr><th>2.Spouse:</th><td>"+rs.getString(3)+"</td></tr><tr><th>3.Father's Name:</th><td>"+rs.getString(4)+"</td></tr><tr><th>4.Father's Phone:</th><td>"+rs.getString(5)+"</td></tr><tr><th>5.Mother's:</th><td>"+rs.getString(6)+"</td></tr><tr><th>6.Mother's Phone:</th><td>"+rs.getString(7)+"</td></tr><tr><th>7.Guardian:</th><td>"+rs.getString(8)+"</td></tr><tr><th>8.Guardian Phone:</th><td>"+rs.getString(9)+"</td></tr><tr><th>9.Gender:</th><td>"+rs.getString(10)+"</td></tr><tr><th>10.Age:</th><td>"+rs.getString(11)+"</td></tr><tr><th>11.DOB:</th><td>"+rs.getString(12)+"</td></tr><tr><th>12.Date of Joining:</th><td>"+rs.getString(13)+"</td></tr><tr><th>13.Blood Group:</th><td>"+rs.getString(14)+"</td></tr><tr><th>14.Address:</th><td>"+rs.getString(15)+"</td></tr><tr><th>15.Education:</th><td>"+rs.getString(16)+"</td></tr><tr><th>16.Health Issue:</th><td>"+rs.getString(17)+"</td></tr><tr><th>17.Food:</th><td>"+rs.getString(18)+"</td></tr><tr><th>18.Concession:</th><td>"+rs.getString(19)+"</td></tr><tr><th>19.Reason:</th><td>"+rs.getString(20)+"</td></tr><tr><th>20.Heirs1:</th><td>"+rs.getString(21)+"</td></tr><tr><th>21.Heirs2:</th><td>"+rs.getString(22)+"</td></tr><tr><th>22.Heirs3:</th><td>"+rs.getString(23)+"</td></tr><tr><th>23.Heirs4:</th><td>"+rs.getString(24)+"</td></tr><tr><th>24.Heirs5:</th><td>"+rs.getString(25)+"</td></tr>");
}
st.close();
con.close();
%>
</table>
</div>
<center><input type="button" value="Back" class="butt" onClick="history.back()">
        <button onclick="window.print()" class="butt">Print Page</button>
</center>
</body>
</html>