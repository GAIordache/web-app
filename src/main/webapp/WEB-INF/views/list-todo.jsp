<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>


<div class="container">
	<H1>Weclome ${name}</H1>


	<table class="table table-striped">
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

	<a class="btn btn-success" href="/AddTodo">Add new Todo</a>

</div>

<%@ include file="../common/footer.jspf" %>	