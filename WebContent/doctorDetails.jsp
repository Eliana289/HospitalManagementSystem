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
			<li class="nav-item"><a class="nav-link" href="patientManage">Patients</a></li>
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
	<h3>Details of ${doctorsWork.title}. ${doctorsWork.name}</h3>
	<div class="row">
			<div class="col-md-4 mb-5">
			<table class="table">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td>${doctorsBio.name}</td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td>${doctorsBio.dob}</td>
				</tr>
				<tr>
					<td>Age</td>
					<td>${doctorsBio.age}</td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>${doctorsBio.gender}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${doctorsBio.address}</td>
				</tr>
				<tr>
					<td>Start Date</td>
					<td>${doctorsBio.startDate}</td>
				</tr>
			</tbody>
		</table>
			</div>
			<div class="col-md-8 mb-5">
			<table class="table table-striped">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td>Id</td>
					<td>${doctorsWork.workid}</td>
				</tr>
				<tr>
					<td>Title</td>
					<td>${doctorsWork.title}</td>
				</tr>
				<tr>
					<td>Certificate</td>
					<td>${doctorsWork.certificate}</td>
				</tr>
				<tr>
					<td>Office Time</td>
					<td>${doctorsWork.officeTime}</td>
				</tr>
				<tr>
					<td>Room</td>
					<td>${doctorsWork.room}</td>
				</tr>
				
				<tr>
					<td>Department</td>
					<td>${doctorsWork.department}</td>
				</tr>
				<tr>
					<td>Specialist</td>
					<td>${doctorsWork.speciality}</td>
				</tr>
				<tr>
					<td>Check-up Fee</td>
					<td>${doctorsWork.checkupFee}</td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td>${doctorsWork.phoneNo}</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>${doctorsWork.emailNo}</td>
				</tr>
			</tbody>
		</table>
			
			</div>
	</div>
		


		<form action="doctorManage" method="post">
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
