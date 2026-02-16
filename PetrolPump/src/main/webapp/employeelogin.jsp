<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/AdminDashboardStyle.css" rel="stylesheet"/>
<link href="CSS/employeestyle.css" rel="stylesheet"/>
</head>
<body>
<div class='container'>
<form name='frm' action='validate' method='POST'>
	<ul class='subContainer'>
		<li><input type='text' name='email' value='' placeholder='Enter email as username' class='control'/></li>
		<li><input type='text' name='contact' value='' placeholder='Enter contact as password' class='control'/></li>
		<li><input type='submit' name='s' value='Login' class='control'/></li>
	</ul>
</form>
</div>
</body>
</html>