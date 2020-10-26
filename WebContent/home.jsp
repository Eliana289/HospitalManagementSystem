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
			<li class="nav-item"><a class="nav-link" href="patientLogin.jsp">Appointment</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown">Login</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="alogin.jsp">Administrator</a> 
					<a class="dropdown-item" href="patientLogin.jsp">Patient</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="patientRegist.jsp">Sign Up</a></li>
		</ul>
	</nav>
    <br> <br> <br>
	<div class="container">
		<h2>Hospital Management Solution</h2>
		<div id="demo" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/home1.jpg" alt="Los Angeles" width="1100"
						height="500">
					<div class="carousel-caption">
						<h3>Management</h3>
						<p>Lorem ipsum dolor sit amet</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/home2.jpg" alt="Chicago" width="1100" height="500">
					<div class="carousel-caption">
						<h3>Management</h3>
						<p>Lorem ipsum dolor sit amet</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/home3.jpg" alt="New York" width="1100" height="500">
					<div class="carousel-caption">
						<h3>Management</h3>
						<p>Lorem ipsum dolor sit amet</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>

	<br>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-8 mb-5">
				<h2>Our Services</h2>
				<hr>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A
					deserunt neque tempore recusandae animi soluta quasi? Asperiores
					rem dolore eaque vel, porro, soluta unde debitis aliquam
					laboriosam. Repellat explicabo, maiores!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Omnis optio neque consectetur consequatur magni in nisi, natus
					beatae quidem quam odit commodi ducimus totam eum, alias, adipisci
					nesciunt voluptate. Voluptatum.</p>
				<br> <a class="btn btn-warning btn-lg" href="patientLogin.jsp">Make
					Appointment &raquo;</a>
			</div>
			<div class="col-md-4 mb-5">
				<h2>Contact Us</h2>
				<hr>
				<address>
					<strong>Hospital.In</strong> <br>3481 Melrose Place <br>Beverly
					Hills, CA 90210 <br>
				</address>
				<address>
					<abbr title="Phone">P:</abbr> (123) 456-7890 <br> <abbr
						title="Email">E:</abbr> <a href="mailto:#">name@example.com</a>
				</address>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="img/homec1.jpg" alt="">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Sapiente esse necessitatibus neque sequi
							doloribus.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-dark">Find Out More!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="img/homec2.jpg" alt="">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Sapiente esse necessitatibus neque sequi
							doloribus totam ut praesentium aut.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-dark">Find Out More!</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="img/homec3.jpg" alt="">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Sapiente esse necessitatibus neque.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-dark">Find Out More!</a>
					</div>
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
