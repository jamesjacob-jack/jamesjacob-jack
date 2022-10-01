<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleting Page</title>
<style>
.inner{
    background-color:lightblue;
    position:absolute;
    border:5px solid black;
    left:40%;
    border-radius:10px;
    width:450px;
    height:200px;
    top:280px;
}
.butt{
     width:150px;
     height:50px;
     margin-top:10px;
     font-style:bold;
       
}
.butt:hover{
     box-shadow:0 5px 20px rgba(0,0,0,.20);
}
.inner:hover{
   color:red;
    background-color:lightblue;
    
}

</style>
</head>
<body>
<%
String id=request.getParameter("id");
//int Id= Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LightOldAgeHome", "root", "");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select* from oldageHome");
while (rs != null) {
	st.executeUpdate("delete from oldageHome where Id='" + id + "'");
	break;
}
st.close();
con.close();
%>
<center><a href="11.jpg" download >download</a><div class="outer"><div class="inner"><h1>Record Deleted......</h1><center><input type="button" value="Back" class="butt" onClick="history.back()"></center></div></div></center>

</body>
</html>