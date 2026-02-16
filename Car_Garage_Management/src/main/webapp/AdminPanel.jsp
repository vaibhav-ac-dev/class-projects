<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="PanelCss.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="https://kit.fontawesome.com/014ca51276.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="nav-side-menu">
    <div class="brand">Royal Car</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
    <div class="menu-list">
        <ul id="menu-content" class="menu-content collapse out">
            <li>
                <a href="#">
                <i class="fa fa-dashboard fa-lg"></i> Dashboard
                </a>
            </li>

            <li data-toggle="collapse" data-target="#products" class="collapsed active">
                <a href="#"><i class="fa-solid fa-wrench"></i> Roles <span class="arrow"></span></a>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">Add Role</a></li>
                    <li><a href="#">View All Roles</a></li>
              
                </ul>
            </li>

            <li data-toggle="collapse" data-target="#service" class="collapsed">
                <a href="#"><i class="fa fa-user fa-lg"></i> Employees <span class="arrow"></span></a>
                <ul class="sub-menu collapse" id="service">
                    <li>Add Employee</li>
                    <li>View All Employees</li>
                </ul>
            </li>

            <li data-toggle="collapse" data-target="#new" class="collapsed">
                <a href="#"><i class="fa fa-car fa-lg"></i> Customers <span class="arrow"></span></a>
                <ul class="sub-menu collapse" id="new">
                    <li>View Customer Details</li>
                </ul>
            </li>

            <li>
                <a href="#">
                <i class="fa fa-user fa-lg"></i> Profile
                </a>
            </li>

            <li>
                <a href="#">
                <i class="fa fa-users fa-lg"></i> Users
                </a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
