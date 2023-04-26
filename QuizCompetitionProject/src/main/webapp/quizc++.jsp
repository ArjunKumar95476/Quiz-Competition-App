<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C++ Quiz</title>
<style type="text/css">
body
{
 display: flex;flex-direction:column;justify-content: center;align-items: center;
 background: graytext;
}
.formCPlusPlus{display:flex;flex-direction:column;justify-content:center;align-items:center; padding: 0px 250px;}
form{padding: 20px 20px; background: white; border-radius: 10px;}
.form-group{padding: 10px 100px;}
.input-group{ font-size: 15px;}
input{margin: 10px 10px;}
label{font-weight: 600; font-size: 17px;word-spacing: 2px;}
</style>
</head>
<body>
<%! double score=0; String slogan="";%>
<% 
score=0;
String question1=request.getParameter("question1");
String question2=request.getParameter("question2");
String question3=request.getParameter("question3");
String question4=request.getParameter("question4");
String question5=request.getParameter("question5");
String question6=request.getParameter("question6");
String question7=request.getParameter("question7");
String question8=request.getParameter("question8");
String question9=request.getParameter("question9");
String question10=request.getParameter("question10");
String question11=request.getParameter("question11");
String question12=request.getParameter("question12");
String question13=request.getParameter("question13");
String question14=request.getParameter("question14");
String question15=request.getParameter("question15");
if(question1==null||question2==null||question3==null||question4==null||question5==null||question6==null||question7==null||question8==null||question9==null||question10==null||question11==null||question12==null||question13==null||question14==null||question15==null)
{
	%>
	<p style="color: red;"><b>--You have to solve all question other form will not submit.</b></p>
	<%
}
else
{
	if(question1.equals("yes"))
		score++;
	if(question2.equals("yes"))
		score++;
	if(question3.equals("yes"))
		score++;
	if(question4.equals("yes"))
		score++;
	if(question5.equals("yes"))
		score++;
	if(question6.equals("yes"))
		score++;
	if(question7.equals("yes"))
		score++;
	if(question8.equals("yes"))
		score++;
	if(question9.equals("yes"))
		score++;
	if(question10.equals("yes"))
		score++;
	if(question11.equals("yes"))
		score++;
	if(question12.equals("yes"))
		score++;
	if(question13.equals("yes"))
		score++;
	if(question14.equals("yes"))
		score++;
	if(question15.equals("yes"))
		score++;
	if((int)score<=5)
	{
		slogan="Wrost Performance";
		score=score*6.67;
	}
	else if((int)score<=10&&(int)score>5)
	{
		slogan="Good Performance";
		score=score*6.67;	
	}
	else if((int)score<=12&&(int)score>10)
	{
		slogan="Best Performance";
		score=score*6.67;	
	}
	else if((int)score<=15&&(int)score>12)
	{
		slogan="Great Performance";
		score=score*6.67;	
	}
}
%>
<h2>  Your score : <%=score%>%</h2>
<%
if(slogan.equals("Wrost Performance"))
{
	%>
	 <h1 style="color: red;text-shadow: 1px 1px 1px black;"><%=slogan%>!</h1>
	<% 
}
if(slogan.equals("Good Performance"))
{
	%>
	 <h1 style="color: green;text-shadow: 1px 1px 1px black;"><%=slogan%>!</h1>
	<% 
}
if(slogan.equals("Best Performance"))
{
	%>
	 <h1 style="color: green; text-shadow: 1px 1px 1px black;"><%=slogan%>!</h1>
	<% 
}
if(slogan.equals("Great Performance"))
{
	%>
	 <h1 style="color: green;text-shadow: 1px 1px 1px black;"><%=slogan%>!</h1>
	 <h2>Congratulations!</h2>
	<% 
}
%>
<%score=0; 
slogan="";
%>
<h1>C++  Quiz Competition </h1>
<div class="formCPlusPlus">
<form>
<div class="form-group">
<label>1. C++ was developed by ______ </label>
<div class="input-group">
<input type="radio" name="question1" value="no"> a -  Thomas kushz<input type="radio" name="question1" value="no"> b - oJohn kemney<input type="radio" name="question1" value="yes"> c - Bjarne Stroutstrup<input type="radio" name="question1" value="no"> d - James Gosling
</div>
</div>
<div class="form-group">
<label>2. Which one of the following is a keyword? </label>
<div class="input-group">
<input type="radio" name="question2" value="no"> a -  Size<input type="radio" name="question2" value="no"> b - Key<input type="radio" name="question2" value="no"> c - Jump<input type="radio" name="question2" value="yes"> d - Switch
</div>
</div>
<div class="form-group">
<label>3.________ is the smallest individual unit in a program. </label>
<div class="input-group">
<input type="radio" name="question3" value="no"> a - Variable<input type="radio" name="question3" value="no"> b - Control<input type="radio" name="question3" value="no"> c - Character<input type="radio" name="question3" value="yes"> d - Token
</div>
</div>
<div class="form-group">
<label>4. What is a constant that contains a single character enclosed whithin single quotes? </label>
<div class="input-group">
<input type="radio" name="question4"value="yes"> a -  Character<input type="radio" name="question4"value="no"> b - Numeric<input type="radio" name="question4"value="no"> c - Fixed<input type="radio" name="question4"value="no"> d - Floating point
</div>
</div>
<div class="form-group">
<label>5. The modulus operator uses __________character. </label>
<div class="input-group">
<input type="radio" name="question5" value="no"> a -  +<input type="radio" name="question5" value="no"> b - *<input type="radio" name="question5" value="no"> c - /<input type="radio" name="question5" value="yes"> d - %
</div>
</div>
<div class="form-group">
<label>6. Every variable should be separated by ________separator.  </label>
<div class="input-group">
<input type="radio" name="question6" value="no"> a -  Dot<input type="radio" name="question6" value="no"> b - Colon<input type="radio" name="question6" value="yes"> c - Comma<input type="radio" name="question6" value="no"> d - Semicolon
</div>
</div>
<div class="form-group">
<label>7. Auto, static, extern and register are called as ___________. </label>
<div class="input-group">
<input type="radio" name="question7" value="no"> a -  Static<input type="radio" name="question7" value="no"> b - Register<input type="radio" name="question7" value="no"> c - Auto<input type="radio" name="question7" value="yes"> d - Storage specifier(true)
</div>
</div>
<div class="form-group">
<label>8.How many storage specifier are there in a C++? </label>
<div class="input-group">
<input type="radio" name="question8" value="no"> a -  2<input type="radio" name="question8" value="no"> b - 3<input type="radio" name="question8" value="no"> c - 4<input type="radio" name="question8" value="yes"> d - 5
</div>
</div>
<div class="form-group">
<label>9. Signed, Unsigned, long and short are some of the _________. </label>
<div class="input-group">
<input type="radio" name="question9" value="no"> a -  Void<input type="radio" name="question9" value="no"> b - Data<input type="radio" name="question9" value="no"> c - Derived Data<input type="radio" name="question9" value="yes"> d - Modifiers
</div>
</div>
<div class="form-group">
<label>10. Logical AND(&&) and Logical OR(||) are _______________operators. </label>
<div class="input-group">
<input type="radio" name="question10" value="yes"> a -  Logical<input type="radio" name="question10" value="no"> b - Equality<input type="radio" name="question10" value="no"> c - Class Member<input type="radio" name="question10" value="no"> d - Comma
</div>
</div>
<div class="form-group">
<label>11.___________operators have lower precedence to relational and arithmetic operator. </label>
<div class="input-group">
<input type="radio" name="question11" value="no"> a -  Conditional<input type="radio" name="question11" value="no"> b - Boolean<input type="radio" name="question11" value="yes"> c - Logical<input type="radio" name="question11" value="no"> d - Relational
</div>
</div>
<div class="form-group">
<label>12. How many C++ data types are broadly classified? </label>
<div class="input-group">
<input type="radio" name="question12"  value="no"> a -  2<input type="radio" name="question12"  value="yes"> b - 3<input type="radio" name="question12"  value="no"> c - 4<input type="radio" name="question12"  value="no"> d - 5
</div>
</div>
<div class="form-group">
<label>13. Float and double are related to _________data type. </label>
<div class="input-group">
<input type="radio" name="question13"  value="no"> a - Void<input type="radio" name="question13"  value="yes"> b - Floating<input type="radio" name="question13"  value="no"> c - Fixed<input type="radio" name="question13"  value="no"> d - Integral
</div>
</div>
<div class="form-group">
<label>14. Variable name must begin with ___________ </label>
<div class="input-group">
<input type="radio" name="question14" value="no"> a -  #<input type="radio" name="question14" value="no"> b - $<input type="radio" name="question14" value="no"> c - Number<input type="radio" name="question14" value="yes"> d - Letter
</div>
</div>
<div class="form-group">
<label>15. Integer values are stored in _________bit fromat in binary form. </label>
<div class="input-group">
<input type="radio" name="question15" value="no"> a -  8<input type="radio" name="question15" value="yes"> b - 16<input type="radio" name="question15" value="no"> c - 32<input type="radio" name="question15" value="no"> d - 64
</div>
</div>
<div class="button">
<input type="submit" style="background: blue; padding: 8px 30px; margin-left: 550px; color: white;border:none; border-radius: 15px;">
</div>
</form>
<a href="index.jsp"><button style=" font-size:20px;margin-top:10px;padding: 7px 400px;background: green;color: white;border: none;outline: none;border-radius: 10px; letter-spacing: 2px;text-shadow: 1px 1px 1px black; ">Quiz</button></a>
</div>
</body>
</html>