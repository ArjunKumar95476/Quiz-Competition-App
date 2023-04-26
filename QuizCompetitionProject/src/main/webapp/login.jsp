<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.quize.dao.InputDaoClass,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login//quiz competition</title>
<style type="text/css">
body {
	display: flex; flex-direction:column;justify-content: center;align-items: center; background: gray;
}
.textarea{padding-top: 60px; padding-bottom: 20px; display: flex;flex-direction:column;justify-content: center;align-items: center; gap:30px;}.formlogin{padding: 60px;}
</style>
</head>
<body>
<%
String mob=request.getParameter("mobilenumber");
boolean flag=false;
Connection conn=InputDaoClass.getConnection();
PreparedStatement ps=conn.prepareStatement("select mobilenumber from quizregister");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	if(rs.getString(1).equals(mob)){
		flag=true;
	    response.sendRedirect("index.jsp");
		break;
	}
}
if(!flag){out.println("Error..........................!");}

%>
<div class="textarea">
<h1 style="text-shadow: 1px 1px 1px graytext;">Quiz Competition Hub</h1>
<h2 style="color: red; text-shadow: 1px 1px 1px black;">Login Here !</h2>
</div>
<div class="formlogin">
<form action="login.jsp">
<div class="form-group">
<label style="padding-left: 20px; letter-spacing:2px; font-weight: 700;">Mobile Number</label>
<div class="input-group">
<input type="text" name="mobilenumber" style="width: 400px; padding: 15px;border-radius: 15px; margin-top:10px; font-size: 17px; border: none;outline: none;">
</div>
</div>
<div class="input-group">
<input type="submit"style="width: 150px; padding: 10px; border-radius: 15px; margin-top: 20px;margin-left: 150px; background: blue;border: none; color: white;">
</div>
</form>
</div>
</body>
</html>