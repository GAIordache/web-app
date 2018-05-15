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
			<li><a href="/list-todo.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
			<li><a href="https://edu.jademy.ro/wiki/doku.php">WikiJademy</a></li>
			<li><a href="https://www.udemy.com/home/my-courses/learning/">Udemy Courses</a></li>
			<li><a href="https://github.com/">GitHub</a></li>
			<li><a href="https://www.youtube.com/channel/UCyUBW72KU30dfAYWLVNZO8Q">Stefan Mischook</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/logout.do">Logout</a></li>
		</ul>

	</nav>

	<div class="container">
		<H1>Weclome ${name}</H1>
		
	
		<table class="table table-striped" >
			<caption>Your Todos!!!</caption>
			<thead>
				<th>Description</th>
				<th>Category</th>
				<th>Actions</th>
			</thead>
			<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.getName()}</td>
					<td>${todo.getCategory()}</td>
					<td><a class="btn btn-danger"
					href="/delete-todo.do?todo=${todo.getName()}&category=${todo.getCategory()}">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<a class="btn btn-success"href="/AddTodo">Add new Todo</a>
		
	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

	<script src="webjars/jquery/2.2.4/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>