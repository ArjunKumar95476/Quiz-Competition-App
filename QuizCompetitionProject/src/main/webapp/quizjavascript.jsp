<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Script Quiz</title>
<style type="text/css">
body
{
 display: flex;flex-direction:column;justify-content: center;align-items: center;
 background: graytext;
}
.formjavascript{display:flex;flex-direction:column;justify-content:center;align-items:center; padding: 0px 250px;}
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
<h1>Java Script  Quiz Competition </h1> 
<div class="formjavascript">
<form>
<div class="form-group">
<label>1.What is JavaScript? </label>
<div class="input-group">
<input type="radio" name="question1" value="yes"> a - JS is a scripting language used to make the website interactive(true)<input type="radio" name="question1" value="no"> b - JS is an assembly language used to make the website interactive.<input type="radio" name="question1" value="no"> c - JS is a compiled language used to make the website intercative<input type="radio" name="question1" value="no"> d - None of these
</div>
</div>
<div class="form-group">
<label>2. Which of the following is correct about JavaScript? </label>
<div class="input-group">
<input type="radio" name="question2" value="yes"> a -  JS is an Object-Based language(true)<input type="radio" name="question2" value="no"> b - JS is Assembly-language<input type="radio" name="question2" value="no"> c - JS is an Object_Oriented language<input type="radio" name="question2" value="no"> d - JS is a High Level language
</div>
</div>
<div class="form-group">
<label>3.Arrays in JS are defined by which of the following statements?  </label>
<div class="input-group">
<input type="radio" name="question3" value="yes"> a - It is an ordered list of values(true)<input type="radio" name="question3" value="no"> b - it is an ordered list of objects<input type="radio" name="question3" value="no"> c - it is an ordered list of String<input type="radio" name="question3" value="no"> d - it is an ordered list of functions
</div>
</div>
<div class="form-group">
<label>4. What will be the output of the following JavaScript code?
<pre>
      function compare()
      {
        int num=2;
        char b=2;
        if(a==b)
           return true;
        else 
           return false;
      }
</pre>
 </label>
<div class="input-group">
<input type="radio" name="question4" value="no"> a -  false<input type="radio" name="question4" value="yes"> b - true<input type="radio" name="question4" value="no"> c - compilation error<input type="radio" name="question4" value="no"> d - runtime error
</div>
</div>
<div class="form-group">
<label>5. What will be the output of the following Java Script anippet?
<pre>
      function equalto()
       {
        int num=10;
        if(num=="10")
          return true;
        else 
        return false;
       }
</pre>
 </label>
<div class="input-group">
<input type="radio" name="question5" value="yes"> a - false<input type="radio" name="question5" value="no"> b - true<input type="radio" name="question5" value="no"> c - compilation error<input type="radio" name="question5" value="no"> d - runtime error
</div>
</div>
<div class="form-group">
<label>6.Will the following JavaScript code work? 
<pre>
          var js=(function(x){return x*x;}(10));
</pre>
</label>
<div class="input-group">
<input type="radio" name="question6" value="no"> a -  Exception will be thrown<input type="radio" name="question6" value="no"> b - Memory leak<input type="radio" name="question6" value="no"> c - Error<input type="radio" name="question6" value="yes"> d - Yes,perfectly(true)
</div>
</div>
<div class="form-group">
<label>7. Which of the following is not javascript data types? </label>
<div class="input-group">
<input type="radio" name="question7" value="no"> a -  Null type<input type="radio" name="question7" value="no"> b - Undefined type<input type="radio" name="question7" value="no"> c - Number type<input type="radio" name="question7" value="yes"> d - All of the mentioned 
</div>
</div>
<div class="form-group">
<label>8. What will be the output of the following JavaScript code snippet? 
<pre>
        int a=1;
        if(a!=null)
          return 1;
        else 
          return 0;

</pre>
</label>
<div class="input-group">
<input type="radio" name="question8" value="no"> a - 0 <input type="radio" name="question8" value="yes"> b - 1<input type="radio" name="question8" value="no"> c - compiler error<input type="radio" name="question8" value="no"> d - runtime error
</div>
</div>
<div class="form-group">
<label>9.Which of the following object is the main entry point to all client side Java Script features and APIs? </label>
<div class="input-group">
<input type="radio" name="question9" value="no"> a -  Position<input type="radio" name="question9" value="yes"> b - Window<input type="radio" name="question9" value="no"> c - Standard<input type="radio" name="question9" value="no"> d - Location
</div>
</div>
<div class="form-group">
<label>10. What will be the output of the following JavaScript Program? 
<pre>
             function sanfoundry(javascript)
             {
               return (javascript ? "yes":"no");
             }
             bool ans=true;
             console.log(sanfoundry(ans));
</pre>
</label>
<div class="input-group">
<input type="radio" name="question10" value="no"> a -  Compilation error<input type="radio" name="question10" value="no"> b - Runtime error<input type="radio" name="question10" value="yes"> c - Yes<input type="radio" name="question10" value="no"> d - No
</div>
</div>
<div class="form-group">
<label>11. What will be the output of the following JavaScript code? 
<pre>
           function height()
           {
             var height=123.56;
             var type=(height>=190)?"tail":"short";
             return type;
           }
</pre>
</label>
<div class="input-group">
<input type="radio" name="question11" value="yes"> a -  short<input type="radio" name="question11" value="no"> b - 123.56<input type="radio" name="question11" value="no"> c - tall<input type="radio" name="question11" value="no"> d - 190
</div>
</div>
<div class="form-group">
<label>12. Which of the following can be used to call a JavaScript Code Snippet?  </label>
<div class="input-group">
<input type="radio" name="question12" value="yes"> a -  Function/Method<input type="radio" name="question12" value="no"> b - Preprocessor<input type="radio" name="question12" value="no"> c - Triggering Event<input type="radio" name="question12" value="no"> d - RMI
</div>
</div>
<div class="form-group">
<label>13.What will be the output of the following JavaScript Code?
<pre>
        var a=5,b=1
        var obj = {a:10}
        with(obj)
        {
          alert(b);
        }
</pre> </label>
<div class="input-group">
<input type="radio" name="question13" value="yes"> a -  1<input type="radio" name="question13" value="no"> b - 10<input type="radio" name="question13" value="no"> c - 5<input type="radio" name="question13" value="no"> d - Error
</div>
</div>
<div class="form-group">
<label>14.What will be the output of the following JavaScript code?
<pre>

         function range(int javascript)
         {
           int a=5;
           for(int i=0;i less than javascript;i++)
           {
             console.log(a);
           }
          }
         range(3);
</pre>
 </label>
<div class="input-group">
<input type="radio" name="question14" value="no"> a -  2<input type="radio" name="question14" value="no"> b - 5<input type="radio" name="question14" value="yes"> c - 555<input type="radio" name="question14" value="no"> d - error
</div>
</div>
<div class="form-group">
<label>15. Which of the following scoping type does javascript use?
 </label>
<div class="input-group">
<input type="radio" name="question15" value="no"> a -  Sequential<input type="radio" name="question15" value="no"> b - Segmental<input type="radio" name="question15" value="yes"> c - Lexical<input type="radio" name="question15" value="no"> d - Literal
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