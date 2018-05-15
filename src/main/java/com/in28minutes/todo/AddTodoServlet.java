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
@WebServlet("/AddTodo")
public class AddTodoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private TodoService todoService = new TodoService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTodoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/new-todos.jsp")
		.forward(request, response);
	
	}
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String newTodo = request.getParameter("todo");
		String category = request.getParameter("category");
		todoService.addTodo(new Todo(newTodo,category));
		
		//request.setAttribute("todos", todoService.retrieveTodos());
		//request.getRequestDispatcher("/WEB-INF/views/todo.jsp").forward(request, response);
		
		response.sendRedirect("/list-todo.do");
	}

}
