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
		<form class="formarea" name="frm" action="newmachine" method="POST">
			<div class="form-group">
				<label for="exampleInputEmail1">Machine Code</label> 
					<br><br>
					<input type="text" class="form-control control" required="required" name="machineCode" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Machine Code">
					<br><br>
					<table>
					<%
						FuelService fService=new FuelTypeServiceImpl();
						List<FuelTypeModel> list=fService.getAllFuelTypes();
						if(list!=null){
							for(FuelTypeModel m:list){
								%>
								<tr>
								<td><input type='checkbox' name='ftype' value='<%=m.getId()%>'/>&nbsp;&nbsp;<%=m.getName() %></td>
								<td align='right'><input type='text' name='capacity' value='' placeholder='Enter Capacity'/> </td>
								</tr>
								<%
							}
						}
						else{
							%>
							<tr>
							<th>Fuel Type is not decided or not available</th>
							</tr>
							<tr>
							<td><input type='text' name='capacity' value='' placeholder='Enter Capacity'/> </td>
							</tr>
							<%
						}
					%>
					</table>
			</div>
			<br><br>
			<button type="submit" class="btn btn-primary">Add New Machine</button>
		</form>
	</div>
	</div>
	</div>
</body>
</html>