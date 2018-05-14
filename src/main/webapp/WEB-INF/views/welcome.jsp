<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
Welcome!!!! ${name} 
<br>

<p>Your Todos!!!</p>
<p>${todos}</p>



<!--  <br>
<%
String s = request.getParameter("name");
%>
aici este parametrul <%= s %>
-->
</body>
</html>