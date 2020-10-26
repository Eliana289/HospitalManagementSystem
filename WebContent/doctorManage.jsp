<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<li class="nav-item"><a class="nav-link" href="amanage.jsp">Back</a></li>
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


		<!-- tables -->

		<div class="agile-tables">
			<div class="w3l-table-info">
				<br>
				<h3>Doctors Information</h3>
				<br>
				<div>
				<a class="btn btn-success"
					style="float: center; margin-bottom: 10px;" href="#">Add</a>
				</div>
				<table id="table" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th width="5%">Id</th>
							<th width="10%">Name</th>
							<th width="10%">Title</th>
							<th width="10%">Certificate</th>
							<th width="20%">Department</th>
							<th width="15%">Room</th>
							<th width="5%"></th>
							<th width="5%"></th>
							<th width="5%"></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${doctorWork}" var="doctor">
							<tr>
								<td>${doctor.workid}</td>
								<td>${doctor.name}</td>
								<td>${doctor.title}</td>
								<td>${doctor.certificate}</td>
								<td>${doctor.department}</td>
								<td>${doctor.room}</td>

								<td>
									<form method="post" action="doctorDetails">
										<input type="hidden" name="detail_id" value="${doctor.workid}">
										<button type="submit" name="action"
											class="btn btn-info btn-sm" value="view">View</button>
									</form>
								</td>

								<td>
									<form method="post" action="doctorNotice">
										<input type="hidden" name="notice_id" value="${doctor.workid}">
										<button type="submit" name="action"
											class="btn btn-success btn-sm" value="edit">Notify</button>
									</form>
								</td>

								<td>
									<form method="post" action="doctorEdit">
										<input type="hidden" name="edit_id" value="${doctor.workid}">
										<button type="submit" name="action"
											class="btn btn-danger btn-sm" value="delete">Edit</button>
									</form>
								</td>
							</tr>

						</c:forEach>

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
