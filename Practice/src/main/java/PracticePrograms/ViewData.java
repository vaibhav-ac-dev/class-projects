package PracticePrograms;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
@WebServlet("/viewdata")
public class ViewData extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String id[]= request.getParameterValues("id");
		String name[]= request.getParameterValues("name");
		
		out.println("length of id array is = "+id.length+"<br>");
		out.println("lenght of name array is = "+name.length+"<br>");		
		out.println("All ids<br>");
		for(int i=0;i<id.length;i++) {
			out.println(id[i]+"<br>");
		}
		out.println("All Names<br>");
		for(int i=0;i<name.length;i++) {
			out.println(name[i]+"<br>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
