package com.in28minutes.todo;import java.awt.List;

import java.util.ArrayList;


public class TodoService {
	private static java.util.List<Todo> todos = new ArrayList<>();
	
	static {
		todos.add(new Todo("Learn Web Application Development"));
		todos.add(new Todo("Learn Spring MVC"));
		todos.add(new Todo("Learn Spring Rest Services"));
	}
	
	public java.util.List<Todo> retrieveTodos() {
		return todos;
	}
	
	public void addTodo(Todo todo) {
		todos.add(todo);
	}
	
	public void deleteTodo(Todo todo) {
		todos.remove(todo);
	}
	
	
}
