package petrolpump.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petrolpump.admin.model.EmployeeModel;
import petrolpump.admin.service.*;
@WebServlet("/addemployee")
public class AddNewEmployeeController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		int salary=Integer.parseInt(request.getParameter("salary"));
		
		EmployeeModel empModel=new EmployeeModel();
		empModel.setName(name);
		empModel.setEmail(email);
		empModel.setContact(contact);
		empModel.setAddress(address);
		empModel.setSalary(salary);
		
		EmployeeService empService=new EmployeeServiceImpl();
		boolean b=empService.isAddNewEmployee(empModel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("AdminDashboard.jsp");
			r.include(request, response);
			out.println("<h1>Employee added successfully.");
		}
		else {
			RequestDispatcher r=request.getRequestDispatcher("AdminDashboard.jsp");
			r.include(request, response);
			out.println("<h1>Sorry...Emplyee not added.</h1>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
