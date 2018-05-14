<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Yahoo!!!!! FROM JSP</title>
</head>
<body>
My First JSP 
<br>
<!-- this is an expression language (EL) care face
 		parte din JSTL library si asta este 
 		DE PREFERAT SA FOLOSIM!!!! -->
${name} ${Surname}
<br>

<!-- this is a scriplet -->
<%
System.out.println(request.getParameter("name"));

Date date = new Date();
%>

<!-- this is a scriplet expression -->
<div>Current date is <%=date %></div>



</body>
</html>