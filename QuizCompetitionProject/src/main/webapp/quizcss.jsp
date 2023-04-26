<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CSS Quiz</title>
<style type="text/css">
body
{
 display: flex;flex-direction:column;justify-content: center;align-items: center;
 background: graytext;
}
.formcss{display:flex;flex-direction:column;justify-content:center;align-items:center; padding: 0px 250px;}
form{padding: 20px 20px; background: white; border-radius: 10px;}
.form-group{padding: 10px 100px;}
.input-group{ font-size: 15px;}
input{margin: 10px 10px;}
label{font-weight: 600; font-size: 17px;word-spacing: 2px;}
</style>
</head>
<body>
<%! double score=0; String slogan=""; %>
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
<h1>CSS Quiz Competition </h1>
<div class="formcss">
<form>
<div class="form-group">
<label>1.Which is the following tag is used to embed css in html page ?</label>
<div class="input-group">
<input type="radio" name="question1" value="no"> a -  css tag<input type="radio" name="question1" value="no"> b - !DOCTYPE html tag<input type="radio" name="question1" value="no"> c - script tag<input type="radio" name="question1" value="yes"> d - style tag
</div>
</div>
<div class="form-group">
<label>2. Which of the following CSS selectors are used to specify a group of elements? </label>
<div class="input-group">
<input type="radio" name="question2" value="no"> a -  tag<input type="radio" name="question2" value="no"> b - id<input type="radio" name="question2" value="yes"> c - class<input type="radio" name="question2" value="no"> d - both class and tag
</div>
</div>
<div class="form-group">
<label>3. Which of the following has introduced text,list,box,margin,border,color,and background properties? </label>
<div class="input-group">
<input type="radio" name="question3" value="no"> a - HTML<input type="radio" name="question3" value="no"> b - PHP<input type="radio" name="question3" value="yes"> c - CSS<input type="radio" name="question3" value="no"> d - Ajax
</div>
</div>
<div class="form-group">
<label>4. Which of the following CSS framework is used to create for responsive design? </label>
<div class="input-group">
<input type="radio" name="question4" value="no"> a -  django<input type="radio" name="question4" value="no"> b - rails<input type="radio" name="question4" value="no"> c - larawell<input type="radio" name="question4" value="yes"> d - bootstrap
</div>
</div>
<div class="form-group">
<label>5. Which of the following CSS selector is used to specify a rule to bind a particular unique element? </label>
<div class="input-group">
<input type="radio" name="question5" value="no"> a -  tag<input type="radio" name="question5" value="yes"> b - id<input type="radio" name="question5" value="no"> c - class<input type="radio" name="question5" value="no"> d - both class and tag
</div>
</div>
<div class="form-group">
<label>6. Which of the following type of html tag is used to define an internal style sheet? </label>
<div class="input-group">
<input type="radio" name="question6" value="no"> a -  script<input type="radio" name="question6" value="no"> b - link<input type="radio" name="question6" value="no"> c - class<input type="radio" name="question6" value="yes"> d - style
</div>
</div>
<div class="form-group">
<label>7. Which of the following css properties is used to make the text bold? </label>
<div class="input-group">
<input type="radio" name="question7" value="no"> a -  text-decoration:bold<input type="radio" name="question7" value="yes"> b - font-weight:bold<input type="radio" name="question7" value="no"> c - font-style:bold<input type="radio" name="question7" value="no"> d - text-align:bold
</div>
</div>
<div class="form-group">
<label>8.Which of the following are the css extension prefixes for webkit? </label>
<div class="input-group">
<input type="radio" name="question8" value="no"> a -  -chrome<input type="radio" name="question8" value="no"> b - -web<input type="radio" name="question8" value="no"> c - -o-<input type="radio" name="question8" value="yes"> d - -webkit
</div>
</div>
<div class="form-group">
<label>9.Which of the following is the first css specification to become an official W3C Recommendation?  </label>
<div class="input-group">
<input type="radio" name="question9" value="no"> a -  CSS level 2<input type="radio" name="question9" value="no"> b - (X)HTML CSS<input type="radio" name="question9" value="yes"> c - CSS level 1<input type="radio" name="question9" value="no"> d - CSS level 2.1
</div>
</div>
<div class="form-group">
<label>10. Which of the following function defines a linear gradient as a CSS image? </label>
<div class="input-group">
<input type="radio" name="question10" value="no"> a -  gradient()<input type="radio" name="question10" value="yes"> b - linear-gradient()<input type="radio" name="question10" value="no"> c - grayscale()<input type="radio" name="question10" value="no"> d - image()
</div>
</div>
<div class="form-group">
<label>11.Which of the following CSS property sets the font size of text? </label>
<div class="input-group">
<input type="radio" name="question11" value="yes"> a -  font-size<input type="radio" name="question11" value="no"> b - text-size<input type="radio" name="question11" value="no"> c - text<input type="radio" name="question11" value="no"> d - size
</div>
</div>
<div class="form-group">
<label>12. Which of the following is not the property of the CSS box model ? </label>
<div class="input-group">
<input type="radio" name="question12" value="no"> a -  margin<input type="radio" name="question12" value="yes"> b - color<input type="radio" name="question12" value="no"> c - width<input type="radio" name="question12" value="no"> d - height
</div>
</div>
<div class="form-group">
<label>13. Which of the following CSS property sets the shadow for a box element? </label>
<div class="input-group">
<input type="radio" name="question13" value="no"> a -  set-shadow<input type="radio" name="question13" value="yes"> b - box-shadow<input type="radio" name="question13" value="no"> c - shadow<input type="radio" name="question13" value="no"> d - canvas shadow
</div>
</div>
<div class="form-group">
<label>14. Which of the following CSS property is used to set the color of the text? </label>
<div class="input-group">
<input type="radio" name="question14" value="no"> a -  text-decoration<input type="radio" name="question14" value="no"> b - pallet<input type="radio" name="question14" value="no"> c - colour<input type="radio" name="question14" value="yes"> d - color
</div>
</div>
<div class="form-group">
<label>15. Which of the following CSS property controls how an element is positioned?</label>
<div class="input-group">
<input type="radio" name="question15" value="no"> a -  static<input type="radio" name="question15" value="yes"> b - position<input type="radio" name="question15" value="no"> c - fix<input type="radio" name="question15" value="no"> d - set
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