<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="petrolpump.admin.model.*,petrolpump.admin.service.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/AdminDashboardStyle.css" rel="stylesheet"/>
</head>
<body>
	<%@include file="AdminDashboard.jsp"%>
	<div class="col py-3">
		<form class="formarea" name="frm" action="addemployee" method="POST">
			<div class="form-group">
				<label for="exampleInputEmail1">Employee Name</label> 
					<input type="text" class="form-control control" required="required" name="name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Vaibhav Shejol">
					
			</div>
			<br><br>
			<div class="form-group">
				<label for="exampleInputEmail1">Employee Email</label> 
					<input type="text" class="form-control control" required="required" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="vaibhu9@gmail.com">
				
			</div>
			<br><br>
			<div class="form-group">
				<label for="exampleInputEmail1">Employee Contact</label> 
					<input type="text" class="form-control control" required="required" name="contact" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="7498260558">
				
			</div>
			<br><br>
			<div class="form-group">
				<label for="exampleInputEmail1">Employee Address</label> 
					<input type="text" class="form-control control" required="required" name="address" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Pune">
					
			</div>
			<br><br>
			<div class="form-group">
				<label for="exampleInputEmail1">Employee Salary</label> 
					<input type="text" class="form-control control" required="required" name="salary" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="60000">
				
			</div>
			<br><br>
			<button type="submit" class="btn btn-primary">Add New Employee</button>
		</form>
	</div>
	</div>
	</div>
</body>
</html>