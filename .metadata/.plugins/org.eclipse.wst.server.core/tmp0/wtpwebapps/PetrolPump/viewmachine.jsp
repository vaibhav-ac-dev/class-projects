<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="petrolpump.admin.service.*,java.util.*,petrolpump.admin.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
MachineService machineservice=new MachineServiceImpl();
%>
<%@include file="AdminDashboard.jsp"%>
	<div class="col py-3">
	<br><br><br><br>
	<h1>Machine Details</h1>
		<table class="table">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Machine Code</th>
      <th scope="col">Fuel Type</th>
      <th scope="col">Capacity</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</th>
    </tr>
  </thead>
  <tbody>
  <%
  List<Object[]> list=machineservice.getAllMachines();
  if(list!=null){
	  int count=0;
	  for(Object obj[]:list){
		  %>
		  <tr>
	      <th scope="row"><%=++count %></th>
	      <td><%=obj[1] %></td>
	      <td><%=obj[2] %></td>
	      <td><%=obj[3] %></td>
	      <td><a href='del?machineid=<%=(int)obj[0]%>'>DELETE</a></td>
	      <td><a href='updmachine?mid=<%=(int)obj[0]%>&mcode=<%=obj[1].toString()%>'>UPDATE</a></td>
	    </tr>
		  <%
	  }
  }
  else{
	  %>
	  <tr>
	  <th>Machines Not Available</th>
	  </tr>
	  <tr>
	  <td><a href='addmachine.jsp'>Click Here to Add Machine</a></td>
	  </tr>
	  <%
  }
  %>
  </tbody>
</table>
	</div>
	</div>
	</div>
</body>
</html>