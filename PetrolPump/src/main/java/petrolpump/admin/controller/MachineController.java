package petrolpump.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petrolpump.admin.model.MachineModel;
import petrolpump.admin.service.MachineService;
import petrolpump.admin.service.MachineServiceImpl;

@WebServlet("/newmachine")
public class MachineController extends HttpServlet {
	
	MachineService machineService=new MachineServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String machineCode=request.getParameter("machineCode");
		String ftypeid[]=request.getParameterValues("ftype");
		String capacity[]=request.getParameterValues("capacity");
		MachineModel model=new MachineModel();
		model.setMachineCode(machineCode);
		boolean b=machineService.isAddNewMachine(model,ftypeid,capacity);
		if(b) {
			out.println("<h1>Machine added successfully...</h1>");
		}
		else {
			out.println("<h1>Sorry... some problem is there</h1>");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
