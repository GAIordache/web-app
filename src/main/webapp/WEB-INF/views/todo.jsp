<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" 
	rel="stylesheet">

<title>TODOJSP</title>
</head>
<body>

<p>Weclome ${name}</p>
<p>Your Todos!!!</p>

<ol>
	<c:forEach items="${todos}" var="todo">
		<li>${todo.getName()} &nbsp; &nbsp; <a href="/delete-todo.do?todo=${todo.getName()}">Delete</a></li>
		
	</c:forEach>
</ol>

<form action="/Todo" method="post">
	<input type="text" name="todo"> <input type="submit" value="Add">
</form>

<script src="webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>