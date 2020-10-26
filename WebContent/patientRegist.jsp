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
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown">Appointment</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Link 1</a> <a
						class="dropdown-item" href="#">Link 2</a> <a class="dropdown-item"
						href="#">Link 3</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown">Login</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="alogin.jsp">Administrator</a> <a
						class="dropdown-item" href="#">Patient</a>
				</div></li>
		</ul>
	</nav>
	<br>
	<br>
	<br>

	<div class="container">
		<h3>New Patient</h3>
		<hr>
		<form action="patientRegist" method="post">
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Pid: </label> <input
							class="form-control" type="text" id="pidInput" name="pid"
							required="">
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Name: </label> <input
							class="form-control" type="text" name="name" required="">
					</div>

				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Birth Date: </label> <input
							class="form-control" type="text" name="dob"
							placeholder="MM/DD/YY" required="">
					</div>
				</div>

			</div>

			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Age: </label> <input
							class="form-control" type="text" name="age" required="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Gender: </label> <select
							name="gender" class="form-control">
							<option value="null">Select One</option>
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
						<label class="control-label">Phone: </label> <input
							class="form-control" type="text" name="phoneNo" required="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Email: </label> <input
							class="form-control" type="text" name="emailNo" required="">
					</div>
				</div>

			</div>


			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Address: </label>
						<textarea class="form-control" name="address" required=""></textarea>
					</div>
				</div>
			</div>

			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Disease: </label> <input
							class="form-control" type="text" name="disease" required="">
					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label class="control-label">Date: </label> <input
							class="form-control" type="text" name="registDate"
							placeholder="MM/DD/YY" required="">
					</div>
				</div>
			</div>


			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Status: </label> <input
							class="form-control" type="text" name="status"
							placeholder="Admitted/Unadmitted" required="">
					</div>
				</div>

			</div>

			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Notes: </label>
						<textarea class="form-control" name="notes" required=""></textarea>
					</div>
				</div>
			</div>
			
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Password: </label> <input
							class="form-control" name="password" required="">
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<button type="submit" class="btn btn-success">Save</button>
				<button type="button" class="btn btn-dark"
					onclick="window.location.href='home.jsp'">Cancel</button>
			</div>

		</form>
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
