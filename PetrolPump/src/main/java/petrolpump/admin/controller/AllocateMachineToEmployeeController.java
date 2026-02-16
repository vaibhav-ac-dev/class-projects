package petrolpump.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import petrolpump.admin.service.*;
@WebServlet("/allocatemachine")
public class AllocateMachineToEmployeeController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int empId=Integer.parseInt(request.getParameter("empid"));
		String empName=request.getParameter("empName");
		
		RequestDispatcher r=request.getRequestDispatcher("AdminDashboard.jsp");
		r.include(request, response);
		MachineService mService=new MachineServiceImpl();
		List<Object[]> list=mService.getAllMachines();
		LinkedHashMap<Integer,String> hs=new LinkedHashMap<Integer,String>();
		for(Object obj[]:list) {
			hs.put((Integer)obj[0],obj[1].toString());
		}
		out.println("<div class='col py-3'>");
		out.println("<h1>Hey "+empName+" we are going to allocate machine</h1>");
		out.println("<form class='formarea' name='frm' action='finalmachineallocate' method='POST'>");
		out.println("<input type='hidden' name='empid' value='"+empId+"'/>");
		out.println("<select name='mid' class='control'>");
		out.println("<option>Select Machine</option>");
		Set<Map.Entry<Integer,String>> s=hs.entrySet();
		for(Map.Entry<Integer, String> m:s) {
			out.println("<option value='"+m.getKey()+"'>");
			out.println(m.getValue());
			out.println("</option>");
		}
		out.println("</select><br><br>");
		out.println("<input type='time' name='startTime' value='' class='control'/><br><br>");
		out.println("<input type='time' name='endTime' value='' class='control'/><br><br>");
		out.println("<input type='date' name='allDate' value='' class='control'/><br><br>");
		out.println("<input type='submit' name='s' value='Allocate Machine To Employee' class='control'/>");
		out.println("</form></div></div></div>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
