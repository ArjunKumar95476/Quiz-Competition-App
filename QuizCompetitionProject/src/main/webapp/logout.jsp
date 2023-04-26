<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout</title>
</head>
<body>
<%
session.invalidate();
RequestDispatcher rs=request.getRequestDispatcher("index.html");
rs.forward(request, response);
%>
</body>
</html>