<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER PAGE</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
	<link href="/css/login1.css" rel="stylesheet">
</head>
<body>
	<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.active {
	background-color: #4CAF50;
}

.right {
	margin-left: 820px;
}

.signup {
	margin: 50px, 30px, 50px, 80px;
}

img {
	opacity: 0.5;
	filter: alpha(opacity = 50); /* For IE8 and earlier */
}

body {
	background-color: #B0E0E6;
}

.error {
  color: red;
  margin-left: 5px;
}
 
label.error {
  display: inline;
}
</style>
</head>
<body>

	<ul>
		<li><a class="active fa fa-home" href="#home">Home</a></li>
		<li><a href="contact" class="fa fa-phone">Contact Us</a></li>
		<li><a href="about" class="fa fa-info-circle">About</a></li>
		<li><a href="help" class="fa fa-question-circle">Help</a></li>
		<li><a href="signin" class="right fa fa-sign-in" style="font-size:15px;color:red">sign-in</a></li> 
		<li><a href="signup" class="signup fa fa-sign-out" style="font-size:15px;color:red">sign-up</a></li>
	</ul>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center">
					<h1>WELCOME TO SOCIAL HELP_CARE PORTAL</h1>
					<h2>Register to seek help or to give help</h2>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_REGISTER'}">
			<div class="jumbotron">
				<form action="/form" method="post" id="form">
					<div class="form-group">
						<label for="exampleInputEmail1">Name:</label> <input type="text"
							class="form-control" id="name"
							aria-describedby="emailHelp" name="name" placeholder="Enter Name">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="password"
							name="password" placeholder="Password">
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">Select Role</label> <select
							class="form-control" id="select" name="type">
							<option value="select">select</option>
							<option value="NGO">NGO</option>
							<option value="NEEDY">NEEDY</option>
							<option value="Volunteer">Volunteer</option>
							<option value="Admin">Admin</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</c:when>
	</c:choose>

	<!-- Automatic Slideshow Images -->
	<!-- 	<div class="mySlides display-container center">
		<img src="/images/image1.jpg" style="width: 100%; height: 20%" } />
		<div
			class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
		</div>
	</div>

	<div class="mySlides w3-display-container w3-center">
		<img src="/images/image2.png" style="width: 100%"/">
		<div
			class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">

		</div>
	</div> -->



	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="/js/registervalidate.js"></script>
</body>
</html>