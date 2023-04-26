<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.quize.dao.InputDaoClass,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration/quiz hub</title>
<style type="text/css">
body {display: flex;flex-direction: column;justify-content: center;align-items: center; background: wheat;}
.textarea{display: flex;flex-direction: column;justify-content: center;align-items: center; gap:20px;}
.form{ padding:30px;background: gray; width: 35%; border-radius: 15px;}
form{}form,input{width: 400px; padding: 10px 40px; margin: 15px 0; border: none;outline: navy; border-radius: 15px;} form,label{padding-left: 20px; letter-spacing:2px; font-weight: 700;}
</style>
</head> 
<body>
<div class="textarea">
<h1 style="text-shadow: 1px 1px 1px graytext;">Quiz Competition Hub</h1>
<h2 style="color: red; text-shadow: 1px 1px 1px black; padding-bottom: 20px;">Register Here !</h2>
</div>
<div class="form">
<form action="signuphandle.jsp" method="get">
<div class="form-group">
<label>Name</label>
<div class="input-group">
<input type="text" name="name">
</div>
</div>
<div class="form-group">
<label>Mobile Number</label>
<div class="input-group">
<input type="text" name="mobilenumber">
</div>
</div>
<div class="form-group">
<label>Email</label>
<div class="input-group">
<input type="email" name="email">
</div>
</div>
<div class="form-group">
<label>Password</label>
<div class="input-group">
<input type="password" name="password">
</div>
</div>
<div class="input-group">
<input type="submit" value="register" style="width: 200px; margin-left: 120px; background: blue;color: white;">
</div>
</form>
</div>
</body>
</html>