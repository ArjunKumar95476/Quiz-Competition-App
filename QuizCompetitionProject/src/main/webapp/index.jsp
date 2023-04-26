<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Competition// </title>
<style type="text/css">
body{background: wheat;}
.container {
	display: flex;flex-direction: column;justify-content: center;align-items: center;gap:30px;padding: 40px;
}
.text{display: flex;flex-direction: column;justify-content: center;align-items: center;gap:20px;padding-left: 20px;padding-right: 20px;}
.button{display: flex;flex-direction: column;justify-content: center;align-items: center; gap:20px;}
.button1{display: flex;justify-content: center;align-items: center; gap:30px;}
.button2{display: flex;justify-content: center;align-items: center; gap:30px;}
</style>
</head>
<body>
<nav>
<ul><li style="list-style: none;"><a href="logout.jsp"><button style="background: red;color: white; outline: none;border: none;border-radius: 10px;padding: 8px 15px;">Logout</button></a></li></ul>
</nav>
<div class="container">
<div class="text">
<h1 style="font-size: 40px;">Quiz Competition Hub</h1>
<h2>In Each Quiz if You win, You will Get a Awesome Reward!<span style="font-size: 40px;">&#128522;</span></h2>
<p style="font-size: 18px;">"Competition is the test of knowledge", this quotation said that if you have actually knowledge then you must have to test you intelligence. I am mentioning some special quiz test of programming languages like  C,C++, JAVA,HTML, CSS and Java Script. You can give test and test you excellence. there are total 20 question in the each quiz , if you are getting 90% result then you will be awarded by a special award. My team are wishing you all the best for quiz test ...</p>
</div>
<div class="button">
<div class="button1">
<div class="button-group">
<a href="javaquiz.jsp"><button style="width: 250px; padding: 10px 30px; background: blue;color: white;border: none;border-radius: 10px;">JAVA QUIZ</button></a>
</div>
<div class="button-group">
<a href="cquiz.jsp"><button style="width: 250px;padding: 10px 30px; background: blue;color: white;border: none;border-radius: 10px;">C QUIZ</button></a>
</div>
<div class="button-group">
<a href="quizc++.jsp"><button style="width: 250px;padding: 10px 30px; background: blue;color: white;border: none;border-radius: 10px;">C++ QUIZ</button></a>
</div>
</div>
<div class="button2">
<div class="button-group">
<a href="quizjavascript.jsp"><button style="width: 250px;padding: 10px 30px; background: blue;color: white;border: none;border-radius: 10px;">JAVA SCRIPT QUIZ</button></a>
</div>
<div class="button-group">
<a href="quizhtml.jsp"><button style="width: 250px;padding: 10px 30px; background: blue;color: white;border: none;border-radius: 10px;">HTML QUIZ</button></a>
</div>
<div class="button-group">
<a href="quizcss.jsp"><button style="width: 250px;padding: 10px 30px; background: blue;color: white;border: none;border-radius: 10px;">CSS QUIZ</button></a>
</div>
</div>
</div>
</div>
</body>
</html>