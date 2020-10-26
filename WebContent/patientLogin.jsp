<!DOCTYPE html>
<html lang="en">
<head>
<title>Administrator Login</title>
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
			<li class="nav-item"><a class="nav-link" href="patientLogin.jsp">Appointment</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown">Login</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="alogin.jsp">Administrator</a> <a
						class="dropdown-item" href="patientLogin.jsp">Patient</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="patientRegist.jsp">Sign Up</a></li>
		</ul>
	</nav>
	<br> <br> <br>
	<div class="container">
		<h2>Patient Log In</h2>
		<form name="ma" action="patientLogin" method="post">
		<fieldset>
			<div class="form-group">
				<label>Pid:</label> <input type="text" placeholder="Enter pid number"
					class="form-control" name="pid" value="">
			</div>
			<div class="form-group">
				<label>Password:</label> <input type="password" placeholder="Enter password"
					class="form-control" name="password" value="">
			</div>
			<div class="form-group form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="checkbox" name="remember">
					Remember me
				</label>
			</div>
			</fieldset>
			<button type="submit" class="btn btn-success">
			Submit
			</button>
		</form>
		
	</div>
	<br>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy;
				HOSPITAL.IN 2020</p>
		</div>
	</footer>
</body>
</html>
