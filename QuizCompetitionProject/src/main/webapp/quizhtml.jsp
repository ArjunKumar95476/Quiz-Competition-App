<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HTML Quiz</title>
<style type="text/css">
body
{
 display: flex;flex-direction:column;justify-content: center;align-items: center;
 background: wheat;
}
.formhtml{ }
form{padding: 20px 20px; background: white;box-shadow: 2px 2px 1px white,-2px -2px 1px white;}
.form-group{margin: 20px;}
.input-group{ font-size: 14px; }
input{margin: 10px 10px;}
label{font-weight: 600;}
</style>
</head>
<body>
<%! double score=0;String slogan=""; %>
<% 
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
<h1>HTML  Quiz Competition </h1>
<div class="formhtml">
<form action="quizhtml.jsp">
<div class="form-group">
<label>1. Who is the father of HTML ? </label>
<div class="input-group">
<input type="radio" name="question1" value="yes"> a -  Tim Berners-Lee<input type="radio" name="question1" value="no"> b - Brendon Eich<input type="radio" name="question1" value="no"> c - Rasmus Lerdorf<input type="radio" name="question1" value="no"> d - Sergey Brin
</div>
</div>
<div class="form-group">
<label>2. What is the correct syntax of  doctype in HTML5? </label>
<div class="input-group">
<input type="radio" name="question2" value="no"> a -  /doctype hmtl<input type="radio" name="question2" value="no"> b - doctype hmtl<input type="radio" name="question2" value="no"> c -  doctype hmtl!<input type="radio" name="question2" value="yes"> d -  !doctype hmtl
</div>
</div>
<div class="form-group">
<label>3.Which of the following is used to read an HTML page and render it? </label>
<div class="input-group">
<input type="radio" name="question3" value="no"> a -Web server<input type="radio" name="question3" value="no"> b - Web network<input type="radio" name="question3" value="yes"> c - Web browser<input type="radio" name="question3" value="no"> d - Web matrix
</div>
</div>
<div class="form-group">
<label>4. Which of the following tag is used for inserting largest heading in HTML? </label>
<div class="input-group">
<input type="radio" name="question4" value="no"> a -  head<input type="radio" name="question4" value="yes"> b - h1<input type="radio" name="question4" value="no"> c - h6<input type="radio" name="question4" value="no"> d - heading
</div>
</div>
<div class="form-group">
<label>5.In which of HTML  metadata is contained?</label>
<div class="input-group">
<input type="radio" name="question5" value="yes"> a -  head tag<input type="radio" name="question5" value="no"> b - title tag<input type="radio" name="question5" value="no"> c - html tag<input type="radio" name="question5" value="no"> d - body tag
</div>
</div>
<div class="form-group">
<label>6. Which element is used to get highlighted text in HTML5? </label>
<div class="input-group">
<input type="radio" name="question6" value="no"> a -  u tag<input type="radio" name="question6" value="yes"> b - mark tag<input type="radio" name="question6" value="no"> c - highlight tag<input type="radio" name="question6" value="no"> d - b tag
</div>
</div>
<div class="form-group">
<label>7.Which of the following is not a HTML 5 tag? </label>
<div class="input-group">
<input type="radio" name="question7" value="no"> a -  track tag<input type="radio" name="question7" value="no"> b - vedio tag<input type="radio" name="question7" value="yes"> c - slider tag<input type="radio" name="question7" value="no"> d - source tag
</div>
</div>
<div class="form-group">
<label>8. Which of the following elements in HTML5 defines vedio or movie content?  </label>
<div class="input-group">
<input type="radio" name="question8" value="yes"> a - vedio tag <input type="radio" name="question8" value="no"> b - movie tag<input type="radio" name="question8" value="no"> c - audio tag<input type="radio" name="question8" value="no"> d - media tag
</div>
</div>
<div class="form-group">
<label>9.Which element is used for styling html5 layout? </label>
<div class="input-group">
<input type="radio" name="question9" value="yes"> a -  CSS<input type="radio" name="question9" value="no"> b - JQuery<input type="radio" name="question9" value="no"> c - Java Script<input type="radio" name="question9" value="no"> d - PHP
</div>
</div>
<div class="form-group">
<label>10.HTML is a subset of ____________</label>
<div class="input-group">
<input type="radio" name="question10" value="no"> a - SGMT<input type="radio" name="question10" value="yes"> b - SGML<input type="radio" name="question10" value="no"> c - SGME<input type="radio" name="question10" value="no"> d - XHTML
</div>
</div>
<div class="form-group">
<label>11. Which character is used to represent when a tag is closed in html? </label>
<div class="input-group">
<input type="radio" name="question11" value="no"> a -  #<input type="radio" name="question11" value="no"> b - !<input type="radio" name="question11" value="yes"> c - /<input type="radio" name="question11" value="no"> d - \
</div>
</div>
<div class="form-group">
<label>12.Among the following which is the html paragraph tag? </label>
<div class="input-group">
<input type="radio" name="question12" value="yes"> a -  p tag<input type="radio" name="question12" value="no"> b - pre tag<input type="radio" name="question12" value="no"> c - hr tag<input type="radio" name="question12" value="no"> d - a tag
</div>
</div>
<div class="form-group">
<label>13.Which html element is used for short quote? </label>
<div class="input-group">
<input type="radio" name="question13" value="no"> a -  em tag<input type="radio" name="question13" value="no"> b - abbr tag<input type="radio" name="question13" value="yes"> c - q tag<input type="radio" name="question13" value="no"> d - blockquote tag
</div>
</div>
<div class="form-group">
<label>14.Which of the following html tag is used to create an unordered list? </label>
<div class="input-group">
<input type="radio" name="question14" value="no"> a -  ol tag<input type="radio" name="question14"  value="yes"> b - ul tag(true)<input type="radio" name="question14" value="no"> c - li tag<input type="radio" name="question14" value="no"> d - ll tag
</div>
</div>
<div class="form-group">
<label>15. Which of the following html tag is used to add a row in a table? </label>
<div class="input-group">
<input type="radio" name="question15" value="no"> a -  th tag<input type="radio" name="question15" value="no"> b - td tag<input type="radio" name="question15" value="yes"> c - tr tag<input type="radio" name="question15" value="no"> d - tt tag
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