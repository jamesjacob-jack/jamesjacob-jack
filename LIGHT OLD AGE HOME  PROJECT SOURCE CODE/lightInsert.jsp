<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>light Insert</title>
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
String name=request.getParameter("name");

String adjective=request.getParameter("adjective");
String spouse=request.getParameter("spouse");

String father=request.getParameter("father");
String father_pho=request.getParameter("father_phone");

String mother=request.getParameter("mother");
String mother_pho=request.getParameter("mother_phone");

String guardian=request.getParameter("guardian");
String guardian_pho=request.getParameter("guardian_phone");

String gender=request.getParameter("gender");
String age=request.getParameter("age");
String dob=request.getParameter("dob");
String doj=request.getParameter("doj");
String bloodg=request.getParameter("bloodg");
String address=request.getParameter("address");
String education=request.getParameter("education");
String hi=request.getParameter("hi");
String food=request.getParameter("food");
String concession=request.getParameter("concession");
String reason=request.getParameter("reason");

String heirs1=request.getParameter("heirs1");
String heirs2=request.getParameter("heirs2");
String heirs3=request.getParameter("heirs3");
String heirs4=request.getParameter("heirs4");
String heirs5=request.getParameter("heirs5");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LightOldAgeHome","root","");
PreparedStatement ps=con.prepareStatement("insert into  oldageHome values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,adjective+spouse);
ps.setString(4,father);
ps.setString(5,father_pho);
ps.setString(6,mother);
ps.setString(7,mother_pho);
ps.setString(8,guardian);
ps.setString(9,guardian_pho);
ps.setString(10,gender);
ps.setString(11,age);
ps.setString(12,dob);
ps.setString(13,doj);
ps.setString(14,bloodg);
ps.setString(15,address);
ps.setString(16,education);
ps.setString(17,hi);
ps.setString(18,food);
ps.setString(19,concession);
ps.setString(20,reason);
ps.setString(21,heirs1);
ps.setString(22,heirs2);
ps.setString(23,heirs3);
ps.setString(24,heirs4);
ps.setString(25,heirs5);
ps.executeUpdate();
con.close();
%>
<center><div class="inner"><h1>DATA SAVED....</h1><input type="button" value="Back" class="butt" onClick="history.back()"><div></center>
</body>
</html>