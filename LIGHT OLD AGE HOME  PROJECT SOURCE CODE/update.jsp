<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lightoldagehome","root","");
PreparedStatement ps=con.prepareStatement("update oldagehome set Id='"+id+"',Name='"+name+"',Spouse='"+spouse+"',father='"+father+"',father_phone='"+father_pho+"',mother='"+mother+"',mother_phone='"+mother_pho+"',Guardian='"+guardian+"',guardian_phone='"+guardian_pho+"',gender='"+gender+"',age='"+age+"',data_of_birth='"+dob+"',doj='"+doj+"',blood='"+bloodg+"',address='"+address+"',education='"+education+"',hi='"+hi+"',concession='"+concession+"',reason='"+reason+"',heirs1='"+heirs1+"',heirs2='"+heirs2+"',heirs3='"+heirs3+"',heirs4='"+heirs4+"',heirs5='"+heirs5+"' where Name='"+name+"'");
ps.executeUpdate();
con.close();
%>
<center><div class="inner"><h1>Record Updated>>></h1><center><input type="button" value="OK" class="butt" onClick="history.back()"></center></div></center><br/>

</body>
</html>