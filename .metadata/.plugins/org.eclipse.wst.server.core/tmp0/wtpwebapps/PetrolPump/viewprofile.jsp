<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import='petrolpump.admin.service.*' %>
    <%@page import='petrolpump.admin.model.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/AdminDashboardStyle.css" rel="stylesheet"/>
<link href="CSS/employeestyle.css" rel="stylesheet"/>
</head>
<%@include file='employeedashboard.jsp' %>
<body>
<%!
EmployeeModel e;
%>
<%
	int employeeId=Integer.parseInt(session.getAttribute("employeeId").toString());
	EmployeeService empService= new EmployeeServiceImpl();
	e=empService.getProfile(employeeId);
%>
<br><br>
<input type='text' name='name' value='<%=e.getName() %>' class='control'/><br><br>
<input type='text' name='email' value='<%=e.getEmail() %>' class='control'/><br><br>
<input type='text' name='contact' value='<%=e.getContact() %>' class='control'/><br><br>
<input type='text' name='address' value='<%=e.getAddress() %>' class='control'/><br><br>
<input type='text' name='salary' value='<%=e.getSalary() %>' class='control'/><br><br>
<input type='submit' name='s' value='Update Profile' class='control'/>
</body>
</html>