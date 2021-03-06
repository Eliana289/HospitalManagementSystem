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
		<h3>Edit of ${patients.name}</h3>
		<hr>
		<form action="patientUpdate" method="post">
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Name: </label> 
						<input class = "form-control" type="text" name="name" value="${patients.name}" required="">
					</div>

				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Birth Date: </label> <input class = "form-control"
							type="text" name="dob" value="${patients.dob}" required="">
					</div>
				</div>
				
			</div>
			
			<div class="form-row">
			<div class="col">
					<div class="form-group">
						<label class="control-label">Age: </label> <input class = "form-control" type="text"
							name="age" value="${patients.age}" required="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Gender: </label> <select
							name="gender" class = "form-control">
							<option value="${patients.gender}">${patients.gender}</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							<option value="Other">Other</option>
						</select>
					</div>
				</div>
			</div>

			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Phone: </label> <input class = "form-control"
							type="text" name="phoneNo" value="${patients.phoneNo}"
							required="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Email: </label> <input class = "form-control" type="text"
							name="emailNo" value="${patients.emailNo}" required="">
					</div>
				</div>

			</div>
			
			
			<div class="form-row">
			<div class="col">
					<div class="form-group">
						<label class="control-label">Address: </label>
						<textarea class = "form-control" name="address" required="">${patients.address}</textarea>
					</div>
				</div>
			</div>
			
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Disease: </label> <input class = "form-control" type="text"
							name="disease" value="${patients.disease}" required="">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label class="control-label">Date: </label> <input class = "form-control" type="text"
							name="registDate" value="${patients.registDate}" required="">
					</div>
				</div>
			</div>
		
			
			<div class="form-row">
			<div class="col">
					<div class="form-group">
						<label class="control-label">Status: </label> <input class = "form-control" type="text"
							name="status" value="${patients.status}" required="">
					</div>
				</div>
			
			</div>
		
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Notes: </label>
						<textarea class = "form-control" name="notes" required="">${patients.notes}</textarea>
					</div>
				</div>
			</div>


			<div class="form-group">
				<input type="hidden" name="pid" value="${patients.pid}">
				<button type="submit" class="btn btn-success">Update</button>
			</div>

		</form>

		<form action="patientManage" method="post">
			<div class="form-group">
				<button type="submit" class="btn btn-dark">Cancel</button>
			</div>
		</form>
	</div>
	<!---->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy;
				HOSPITAL.IN 2020</p>
		</div>
	</footer>
</body>
</html>
