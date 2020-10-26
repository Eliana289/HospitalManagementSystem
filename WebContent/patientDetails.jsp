<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HOSPITAL.IN</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="patients list" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<!-- Navigation -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		<!-- Brand -->
		<a class="navbar-brand" href="#">HOSPITAL.IN</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="amanage.jsp">Doctors</a></li>
			<li class="nav-item"><a class="nav-link" href="amanage.jsp">Staff</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Log
					out</a></li>
		</ul>
	</nav>
	<br>
	<br>
	<br>

	<div class="container">
	<h3>Details of ${patients.name}</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Title</th>
					<th>Content</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td>${patients.name}</td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td>${patients.dob}</td>
				</tr>
				<tr>
					<td>Age</td>
					<td>${patients.age}</td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>${patients.gender}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${patients.address}</td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td>${patients.phoneNo}</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>${patients.emailNo}</td>
				</tr>
				<tr>
					<td>Disease</td>
					<td>${patients.disease}</td>
				</tr>
				<tr>
					<td>Status</td>
					<td>${patients.status}</td>
				</tr>
				<tr>
					<td>Registration Date</td>
					<td>${patients.registDate}</td>
				</tr>
				<tr>
					<td>Notes</td>
					<td>${patients.notes}</td>
				</tr>
			</tbody>
		</table>


		<form action="patientManage" method="post">
			<button type="submit" class="btn btn-dark">Back</button>
		</form>
		<br>
	</div>


	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy;
				HOSPITAL.IN 2020</p>
		</div>
	</footer>
</body>
</html>
