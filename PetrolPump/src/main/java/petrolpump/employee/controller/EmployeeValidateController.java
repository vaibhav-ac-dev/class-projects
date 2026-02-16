package petrolpump.employee.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petrolpump.admin.service.*;
@WebServlet("/validate")
public class EmployeeValidateController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		EmployeeService empService=new EmployeeServiceImpl();
		int result=empService.verifyEmployee(email, contact);
		if(result!=0) {
			HttpSession session=request.getSession(true);
			session.setAttribute("employeeId", result);
			RequestDispatcher r=request.getRequestDispatcher("employeedashboard.jsp");
			r.forward(request, response);
		}
		else {
			out.println("<h1>login failed</h1>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
