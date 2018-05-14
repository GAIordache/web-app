<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todo2 JSP</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 60px;
		background-color: #f5f5f5;
	}
</style>
</head>

<body>

	<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/ListTodo">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		</ul>

	</nav>

	<div class="container">
		<H1>Weclome ${name}</H1>
		Your Todos!!!

		<ol>
			<c:forEach items="${todos}" var="todo">
				<li>${todo.getName()}&nbsp; &nbsp; <a
					href="/delete-todo.do?todo=${todo.getName()}">Delete</a></li>

			</c:forEach>
		</ol>

		<form action="/AddTodo" method="post">
			New Todo: <input type="text" name="todo"> <input type="submit"
				value="Submit Query">
		</form>
	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

	<script src="webjars/jquery/2.2.4/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>