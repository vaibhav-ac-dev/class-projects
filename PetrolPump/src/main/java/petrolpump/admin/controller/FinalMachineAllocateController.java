package petrolpump.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import petrolpump.admin.service.*;
@WebServlet("/finalmachineallocate")
public class FinalMachineAllocateController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int empId=Integer.parseInt(request.getParameter("empid"));
		int mid=Integer.parseInt(request.getParameter("mid"));
		String startTime=request.getParameter("startTime");
		String endTime=request.getParameter("endTime");
		String date=request.getParameter("allDate");
		EmployeeService empService=new EmployeeServiceImpl();
		boolean b=empService.allocateMachine(empId, mid, startTime,endTime,date);
		if(b) {
			out.println("<h1>Machine allocated successfully</h1>");
		}
		else {
			out.println("<h1>Sorry...Machine not allocated</h1>");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
