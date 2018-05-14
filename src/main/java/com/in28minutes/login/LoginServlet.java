package com.in28minutes.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in28minutes.todo.TodoService;

@WebServlet(urlPatterns ="/login.do")
public class LoginServlet extends HttpServlet {
	
	private LoginService valServ = new LoginService();
	private TodoService todoService = new TodoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Yahoo!!!!!!!!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("My First Servlet");
		out.println("</body>");
		out.println("</html>");*/
		
		
		//String name = request.getParameter("name");
		//String lastName = request.getParameter("Surname");
		
		
		//request.setAttribute("name", request.getParameter("name"));
		//request.setAttribute("password", request.getParameter("password"));
		
		request.getRequestDispatcher("/WEB-INF/views/login2.jsp")
		.forward(request, response);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mName = request.getParameter("name");
		String mPassword = request.getParameter("password");
		
		boolean isUserValid = valServ.isUserValid(mName,mPassword);
		
		if(isUserValid) {
			request.getSession().setAttribute("name", mName);
			response.sendRedirect("/ListTodo");
		
		} else {
			request.setAttribute("errorMessage", "Invalid Credentials!!!");
			request.getRequestDispatcher("WEB-INF/views/login2.jsp").forward(request, response);
		}
	}
	
}
 