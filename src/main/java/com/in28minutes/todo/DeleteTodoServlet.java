package com.in28minutes.todo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TodoServlet
 */
@WebServlet("/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private TodoService todoService = new TodoService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteTodoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		todoService.deleteTodo(new Todo(request.getParameter("todo")));
		response.sendRedirect("/ListTodo");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String newTodo = request.getParameter("todo");
		//todoService.addTodo(new Todo(newTodo));
		
		//response.sendRedirect("/ListTodo");
	//}

}
