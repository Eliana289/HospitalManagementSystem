<!DOCTYPE html>
<html lang="en">
<head>
<title>HOSPITAL.IN</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
			<li class="nav-item"><a class="nav-link" href="home.jsp">Back</a></li>
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
		<div class="row">
			<div class="col-md-2 mb-5">
				<h3>Manage</h3>
				<hr>
				<div class="btn-group-vertical">
					<div class="form-group">
						<form action="patientAppointmentManage" method="post">
						<input type="hidden" name="pid" value="${patients.pid}">
						<input type="hidden" name="password" value="${password}">
							<button type="submit" class="btn btn-dark btn-block">Appointments</button>
						</form>
						<form action="patientBillingManage" method="post">
						<input type="hidden" name="pid" value="${patients.pid}">
						<input type="hidden" name="password" value="${password}">
							<button type="submit" class="btn btn-dark btn-block">Billing</button>
						</form>
						<form action="patientNoticeManage" method="post">
						<input type="hidden" name="pid" value="${patients.pid}">
						<input type="hidden" name="password" value="${password}">
							<button type="submit" class="btn btn-dark btn-block">Notice</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 mb-5">
				<h3>Welcome ${patients.name}</h3>
				<hr>
				<table class="table table-striped">
					<thead>
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
			</div>
		</div>
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
