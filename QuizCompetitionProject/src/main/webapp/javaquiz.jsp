<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Quiz</title>
<style type="text/css">
body
{
 display: flex;flex-direction:column;justify-content: center;align-items: center;
 background: graytext;
}
.formjava{display:flex;flex-direction:column;justify-content:center;align-items:center; padding: 0px 250px;}
form{padding: 20px 20px; background: white; border-radius: 10px;}
.form-gropu{padding: 10px 100px;}
.input-group{ font-size: 15px;}
input{margin: 10px 10px;}
label{font-weight: 600; font-size: 17px;word-spacing: 2px;}
</style>
</head>
<body>
<%! int score=0; String slogan="";%>
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
String question16=request.getParameter("question16");
String question17=request.getParameter("question17");
String question18=request.getParameter("question18");
String question19=request.getParameter("question19");
String question20=request.getParameter("question20");
if(question1==null||question2==null||question3==null||question4==null||question5==null||question6==null||question7==null||question8==null||question9==null||question10==null||question11==null||question12==null||question13==null||question14==null||question15==null||question16==null||question17==null||question18==null||question19==null||question20==null)
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
	if(question16.equals("yes"))
		score++;
	if(question17.equals("yes"))
		score++;
	if(question18.equals("yes"))
		score++;
	if(question19.equals("yes"))
		score++;
	if(question20.equals("yes"))
		score++;
	if(score<=5){slogan="Not Good ";score=score*5;}
	else if(score>5&&score<=10){slogan="Good ";score=score*5;}
	else if(score>10&&score<=15){slogan="Best ";score=score*5;}
	else if(score>15&&score<=20){slogan="Great ";score=score*5;}
}
%>
<h2>  Your score : <%=score%>%</h2>
<%
if(slogan.equals("Not Good "))
{
	%>
	<h1><%=slogan %>Score &#128546;</h1>
	<% 
}
else if(slogan.equals("Good "))
{
	%>
	<h1><%=slogan %>Score &#128528;</h1>
	<% 
}
else if(slogan.equals("Best "))
{
	%>
	<h1 style="color: red;">Congrates!</h1>
	<h1><%=slogan %>Score &#128556;&#128578;</h1>
	<% 	
}
else if(slogan.equals("Great "))
{
	%>
	<h1 >Congratulations !...</h1>
	<h1><%=slogan %>Score &#129321;</h1>
	<% 	
}
%>
<%score=0; slogan=""; %>
<h1>Java  Quiz Competition </h1>
<div class="formjava">
<form>
<div class="form-gropu">
<label>
1.Who Invented Java Programming ?
 </label>
<div class="input-gropu">
<input type="radio" name="question1" value="no"> a - Guido van Rossum<input type="radio" name="question1" value="yes"> b - James Gosling(true) <input type="radio" name="question1" value="no"> c - Dennis Ritchie <input type="radio" name="question1" value="no"> d - Bjarne Stroustrup
</div>
</div>
<div class="form-gropu">
<label>
2.Which statement is true about java ?
 </label>
<div class="input-group">
<input type="radio" name="question2" value="no">a- Java is a sequence-dependent programming language <input type="radio" name="question2" value="no">b- Java is a code-dependent programming language<input type="radio" name="question2" value="yes">c- Java is a platform-dependent programming language <input type="radio" name="question2" value="no">d- Java is a platform-independent programming language(true)
</div>
</div>
<div class="form-gropu">
<label>3. Which component is used to compile,debug and execute the java programs? </label>
<div class="input-group">
<input type="radio" name="question3" value="no"> a - JRE <input type="radio" name="question3" value="no"> b - JIT <input type="radio" name="question3" value="yes"> c - JDK<input type="radio" name="question3" value="no"> d - JVM
</div>
</div>
<div class="form-gropu">
<label>4. Which one of the following is not a java feature?  </label>
<div class="input-group">
<input type="radio" name="question4" value="no"> a - Object-oriented<input type="radio" name="question4" value="yes"> b - Use of Pointers<input type="radio" name="question4" value="no"> c - Portable<input type="radio" name="question4" value="no"> d - Dynamic and Extensible
</div>
</div>
<div class="form-gropu">
<label>5. Which of these can not be used for a variable name in Java ? </label>
<div class="input-group">
<input type="radio" name="question5" value="no"> a - identifier & keyword<input type="radio" name="question5" value="no"> b - identifier<input type="radio" name="question5" value="yes"> c - keyword <input type="radio" name="question5" value="no"> d - none of the mentioned
</div>
</div>
<div class="form-gropu">
<label>6. What is the extension of java code files? </label>
<div class="input-group">
<input type="radio" name="question6" value="no"> a - .js<input type="radio" name="question6" value="no"> b - .txt<input type="radio" name="question6" value="no"> c - .class<input type="radio" name="question6" value="yes"> d - .java
</div>
</div>
<div class="form-gropu">
<label>
7. What will be the output of the following java code?
<pre>
     class increment{
        public static void main(String args[])
       {
          int g=3;
          System.out.println(++g * 8);
       }
       }
</pre>
</label>
<div class="input-group">
<input type="radio" name="question7" value="yes"> a - 32<input type="radio" name="question7" value="no"> b - 33<input type="radio" name="question7" value="no"> c - 24<input type="radio" name="question7" value="no"> d - 25
</div>
</div>
<div class="form-gropu">
<label>8. Which environment variable is used to set the java Path ? </label>
<div class="input-group">
<input type="radio" name="question8" value="no"> a - MAVEN_Path<input type="radio" name="question8" value="no">b - javaPATH<input type="radio" name="question8" value="no">c - JAVA<input type="radio" name="question8" value="yes">d - JAVA_HOME
</div>
</div>
<div class="form-gropu">
<label>
9. What will be the output of the following java program ?
<pre>
          class output{
            public static void main(String args[])
            { 
                 double a,b,c;
                 a=3.0/0;
                 b=0/4.0;
                 c=0/0;
         
                 System.out.println(a);
                 System.out.println(b);
                 System.out.println(c);
          }
        }    

</pre>
 </label>
<div class="input-group">
<input type="radio" name="question9" value="no"> a- NaN<input type="radio" name="question9" value="no">b - Infinity<input type="radio" name="question9" value="no"> c-  0.0<input type="radio" name="question9" value="yes">d - all of the mentioned
</div>
</div>
<div class="form-gropu">
<label>10. Which of the following is not an OOPS concept in java? </label>
<div class="input-group">
<input type="radio" name="question10" value="no"> a - Polymorphism<input type="radio" name="question10" value="no"> b - Inheritance<input type="radio" name="question10" value="yes"> c - Compilation<input type="radio" name="question10" value="no">d - Encapsulation
</div>
</div>
<div class="form-gropu">
<label>11. Which of the following is a type of polymorphism in java Programming ? </label>
<div class="input-group">
<input type="radio" name="question11" value="no"> a - Multiple polymorphism<input type="radio" name="question11" value="yes"> b - Compile time polymorphism<input type="radio" name="question11" value="no"> c - Multilevel polymorphism<input type="radio" name="question11" value="no"> d - Execution time polymorphism
</div>
</div>
<div class="form-gropu">
<label>12 What is the extension of compiled java classes ? </label>
<div class="input-group">
<input type="radio" name="question12" value="no">  a - .txt<input type="radio" name="question12" value="no"> b - .js<input type="radio" name="question12" value="yes"> c - .class(true)<input type="radio" name="question12" value="no">d - .java
</div>
</div>
<div class="form-gropu">
<label>13. Which exception is thrown when java is out of memory? </label>
<div class="input-group">
<input type="radio" name="question13" value="no"> a - MemoryError<input type="radio" name="question13" value="yes"> b - OutOfMemoryError<input type="radio" name="question13" value="no"> c - MemoryOutOfBoundsException<input type="radio" name="question13" value="no"> d - MemoryFullException
</div>
</div>
<div class="form-gropu">
<label>14. Which of these keywords is used to define interfaces in java? </label>
<div class="input-group">
<input type="radio" name="question14" value="no"> a - intf<input type="radio" name="question14" value="no"> b - Intf<input type="radio" name="question14" value="yes"> c - interface<input type="radio" name="question14" value="no"> d - Interface
</div>
</div>
<div class="form-gropu">
<label>15. Which of the following is a superclass of every class in java? </label>
<div class="input-group">
<input type="radio" name="question15" value="no"> a - ArrayList<input type="radio" name="question15" value="no"> b - Abstract class<input type="radio" name="question15" value="yes"> c - Object class<input type="radio" name="question15" value="no"> d - String
</div>
</div>
<div class="form-gropu">
<label>16. Which of the below is not a Java Profiler ?</label>
<div class="input-group">
<input type="radio" name="question16" value="no"> a - JProfiler<input type="radio" name="question16" value="no"> b - Eclipse Profiler<input type="radio" name="question16" value="yes"> c - JVM<input type="radio" name="question16" value="no"> d - JConsole
</div>
</div>
<div class="form-gropu">
<label>17. Which of these packages contains the exception Stack Overflow in java?  </label>
<div class="input-group">
<input type="radio" name="question17" value="no"> a - java.io<input type="radio" name="question17" value="no"> b - java.system<input type="radio" name="question17" value="yes"> c - java.lang<input type="radio" name="question17" value="no">d - java.util
</div>
</div>
<div class="form-gropu">
<label>18.Which of these keywords are used for the block to be examined for exceptions  </label>
<div class="input-group">
<input type="radio" name="question18" value="no"> a - check<input type="radio" name="question18" value="no"> b - throw<input type="radio" name="question18" value="no"> c - catch<input type="radio" name="question18" value="yes"> d - try
</div>
</div>
<div class="form-gropu">
<label>19. Which one of the following is not an access modifier?  </label>
<div class="input-group">
<input type="radio" name="question19" value="no"> a - Protected<input type="radio" name="question19" value="yes">b - Void<input type="radio" name="question19" value="no"> c - Public<input type="radio" name="question19" value="no"> d - Private
</div>
</div>
<div class="form-gropu">
<label>20. Which class provides system independent server side implementation? </label>
<div class="input-group">
<input type="radio" name="question20" value="no"> a - Server<input type="radio" name="question20" value="no"> b - ServerReader<input type="radio" name="question20" value="no"> c - Socket<input type="radio" name="question20" value="yes">d - ServerSocket
</div>
</div>
<div class="button">
<input type="submit" style="background: blue; padding: 8px 30px; margin-left: 550px; color: white;border:none; border-radius: 15px;">

</div>
</form>
<a href="index.jsp"><button style=" font-size:20px;margin-top:10px;padding: 7px 400px;background: green;color: white;border: none;outline: none;border-radius: 10px; letter-spacing: 2px;text-shadow: 1px 1px 1px black; ">Quiz</button></a>
</div>
<hr>
</body>
</html>