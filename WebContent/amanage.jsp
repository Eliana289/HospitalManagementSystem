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
			<li class="nav-item"><a class="nav-link" href="ahome.jsp">Back</a></li>
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
				<h2>Category</h2>
				<hr>
				<div class="btn-group-vertical">
				<div class="form-group">
				<form action="doctorManage" method="post">
					<button type="submit" class="btn btn-dark btn-block">Doctors</button>
				</form>
				<form action="staffManage" method="post">
					<button type="submit" class="btn btn-dark btn-block">Staff</button>
				</form>
					<div class="btn-group">
						<form action="patientManage" method="post">
							<button type="submit" class="btn btn-dark">Patients</button>
						</form>


						<button type="button"
							class="btn btn-dark dropdown-toggle dropdown-toggle-split"
							data-toggle="dropdown">
							<span class="caret"></span>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="patientSelect"> Admitted </a> <a
								class="dropdown-item" href="patientSelect2"> Not Admitted </a>
						</div>
</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 mb-5">
				<div class="jumbotron">
					<h1>Management Space</h1>
					<p>Use left bar to select the category</p>
				</div>
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
