<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C Quiz</title>
<style type="text/css">
body
{
 display: flex;flex-direction:column;justify-content: center;align-items: center;
 background: graytext;
}
.formc{display:flex;flex-direction:column;justify-content:center;align-items:center; padding: 0px 250px;}
form{padding: 20px 20px; background: white; border-radius: 10px;}
.form-group{padding: 10px 100px;}
.input-group{ font-size: 15px;}
input{margin: 10px 10px;}
label{font-weight: 600; font-size: 17px;word-spacing: 2px;}
</style>
</head>
<body>
<%! double score=0;String slogan=""; %>
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
<h1>C  Quiz Competition</h1>
<div class="formc">
<form>
<div class="form-group">
<label>1. Who is the father of C language? </label>
<div class="input-group">
<input type="radio" name="question1" value="no"> a -  Steve Jobs<input type="radio" name="question1" value="no"> b - James Gosling<input type="radio" name="question1" value="yes"> c - Dennis Ritchie <input type="radio" name="question1" value="no"> d - Rasmus Lerdorf
</div>
</div>
<div class="form-group">
<label>2.Which of the following is not a valid C variable name? </label>
<div class="input-group">
<input type="radio" name="question2" value="no"> a -  int number;<input type="radio" name="question2" value="no"> b - float rate;<input type="radio" name="question2" value="no"> c - int variable_count;<input type="radio" name="question2" value="yes"> d - int $main;(true)
</div>
</div>
<div class="form-group">
<label>3. All keyword in C are in____________________ </label>
<div class="input-group">
<input type="radio" name="question3" value="yes"> a - LowerCase letters<input type="radio" name="question3" value="no"> b - UpperCase letters<input type="radio" name="question3" value="no"> c - CamelCase letters<input type="radio" name="question3" value="no"> d - None of the mentioned
</div>
</div>
<div class="form-group">
<label>4. Which is valid C expression? </label>
<div class="input-group">
<input type="radio" name="question4" value="no"> a -  int my_num=100,000;<input type="radio" name="question4" value="yes"> b - int my_num=100000;<input type="radio" name="question4" value="no"> c - int my num=1000;<input type="radio" name="question4" value="no"> d - int $my_num=1000;
</div>
</div>
<div class="form-group">
<label>5. Which of the following can not be used as a variable name in C ? </label>
<div class="input-group">
<input type="radio" name="question5" value="yes"> a -  volatile<input type="radio" name="question5" value=> b - true<input type="radio" name="question5" value="no"> c - friend<input type="radio" name="question5" value=> d - export
</div>
</div>
<div class="form-group">
<label>6. What is short int in C programming? </label>
<div class="input-group">
<input type="radio" name="question6" value="no"> a -  The Basic Data type of C<input type="radio" name="question6" value="no"> b - Qualifier<input type="radio" name="question6" value="yes"> c - Short is the Qualifier and int is a Basic Data type.<input type="radio" name="question6" value="no"> d - All of the mentioned.
</div>
</div>
<div class="form-group">
<label>7.Which keyword is used to prevent any changes in the variable within a C program?  </label>
<div class="input-group">
<input type="radio" name="question7" value="no"> a -  immutable<input type="radio" name="question7" value="no"> b - mutable<input type="radio" name="question7" value="yes"> c - const<input type="radio" name="question7" value="no"> d - volatile
</div>
</div>
<div class="form-group">
<label>8. Which of the following typecasting is accepted by C language? </label>
<div class="input-group">
<input type="radio" name="question8" value="no"> a -  Widening conversions<input type="radio" name="question8" value="no"> b - Narrowing conversions<input type="radio" name="question8" value="yes"> c - Both(true)<input type="radio" name="question8" value="no"> d - None of these
</div>
</div>
<div class="form-group">
<label>9.What is an example of iteration in C? </label>
<div class="input-group">
<input type="radio" name="question9" value="no"> a -  for<input type="radio" name="question9" value="no"> b - while<input type="radio" name="question9" value="no"> c - do-while<input type="radio" name="question9" value="yes"> d - All
</div>
</div>
<div class="form-group">
<label>10. Functions can return enumeration constants in C? </label>
<div class="input-group">
<input type="radio" name="question10" value="yes"> a -  true<input type="radio" name="question10" value="no"> b - false<input type="radio" name="question10" value="no"> c - depends on the compiler<input type="radio" name="question10" value="no"> d - depends on the standard
</div>
</div>
<div class="form-group">
<label>11. Functions in C language are always_____________ </label>
<div class="input-group">
<input type="radio" name="question11" value="no"> a -  Internal<input type="radio" name="question11" value="yes"> b - External<input type="radio" name="question11" value="no"> c - Both Internal and External <input type="radio" name="question11" value="no"> d - External and Internal are not valid terms for functions
</div>
</div>
<div class="form-group">
<label>12. What is #include stdio.h? </label>
<div class="input-group">
<input type="radio" name="question12" value="yes"> a - Preprocessor directive<input type="radio" name="question12" value="no"> b - Inclusion directive<input type="radio" name="question12" value="no"> c - File inclusion directive<input type="radio" name="question12" value="no"> d - None of these
</div>
</div>
<div class="form-group">
<label>13.Which of the following are C preprocessors?  </label>
<div class="input-group">
<input type="radio" name="question13" value="no"> a -  #ifdef<input type="radio" name="question13" value="no"> b - #define<input type="radio" name="question13" value="no"> c - #endif<input type="radio" name="question13" value="yes"> d - All
</div>
</div>
<div class="form-group">
<label>14. The C - Preprocessors are specified with ______symbol. </label>
<div class="input-group">
<input type="radio" name="question14" value="yes"> a -  #<input type="radio" name="question14" value="no"> b - $<input type="radio" name="question14" value="no"> c - ""<input type="radio" name="question14" value="no"> d - &
</div>
</div>
<div class="form-group">
<label>15. What is the sizeof(char) in a 32-bit C compiler?  </label>
<div class="input-group">
<input type="radio" name="question15" value="no"> a -  1 bit<input type="radio" name="question15" value="no"> b - 2 bits<input type="radio" name="question15" value="yes"> c - 1 byte<input type="radio" name="question15" value="no"> d - 2 bytes
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