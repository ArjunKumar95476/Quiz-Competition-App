<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.quize.dao.InputDaoClass,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%!

String name=null;
String mobilenumber=null;
String email=null;
String password=null;
%>
<%
 name=request.getParameter("name");
 mobilenumber=request.getParameter("mobilenumber"); 
 email=request.getParameter("email");
 password=request.getParameter("password");
%>
<%
// checking whether the this mobile number is already present or not if not then continue otherwise login 
boolean flag=true;
Connection conn1=InputDaoClass.getConnection();
PreparedStatement ps1=conn1.prepareStatement("select mobilenumber from quizregister");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
	if(rs1.getString(1).equals(mobilenumber)){
	   // response.sendRedirect("login.jsp");
	   flag=false;
	   %>
	   <p>This mobile number already exist , You have to login.........</p>
	   <%
		break;
	}
}
%>
<%
if(flag)
{
if(name==""||mobilenumber==""||email==""||password=="")
{
	%>
	<h2>Fill Each Field .............</h2>
	<%
}
else{
Connection conn=InputDaoClass.getConnection();
PreparedStatement ps=conn.prepareStatement("insert into quizregister (name,mobilenumber,email,password)values(?,?,?,?)");
ps.setString(1, name);
ps.setString(2, mobilenumber);
ps.setString(3, email);
ps.setString(4, password);
ps.executeUpdate();
RequestDispatcher rs=request.getRequestDispatcher("index.jsp");
rs.forward(request, response);
}
}
%>
</body>
</html>