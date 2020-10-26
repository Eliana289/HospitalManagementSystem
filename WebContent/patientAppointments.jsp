<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<li class="nav-item">
				<form action="patientLogin" method="post">
					<input type="hidden" name="pid" value="${pid}"> <input
						type="hidden" name="password" value="${password}">
					<button type="submit" class="btn btn-dark">Back</button>
				</form>

			</li>
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
							<input type="hidden" name="pid" value="${pid}"> <input
								type="hidden" name="password" value="${password}">
							<button type="submit" class="btn btn-dark btn-block">Appointments</button>
						</form>
						<form action="patientBillingManage" method="post">
							<input type="hidden" name="pid" value="${pid}"> <input
								type="hidden" name="password" value="${password}">
							<button type="submit" class="btn btn-dark btn-block">Billing</button>
						</form>
						<form action="patientNoticeManage" method="post">
							<input type="hidden" name="pid" value="${pid}"> <input
								type="hidden" name="password" value="${password}">
							<button type="submit" class="btn btn-dark btn-block">Notice</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8 mb-5">
				<h3>Appointments</h3>
				<hr>
				<div class="btn-group btn-group-toggle" data-toggle="buttons">
					<form method="post" action="patientAppointments">
						<input type="hidden" name="status" value="submitted">
						<input type="hidden" name="pid" value="${pid}">
						<input type="hidden" name="password" value="${password}">
						<button type="submit" name="action" class="btn btn-light"
							value="view">Submitted</button>
					</form>
					<form method="post" action="patientAppointments">
						<input type="hidden" name="status" value="ongoing">
						<input type="hidden" name="pid" value="${pid}">
						<input type="hidden" name="password" value="${password}">
						<button type="submit" name="action" class="btn btn-light"
							value="view">On-going</button>
					</form>
					<form method="post" action="patientAppointments">
						<input type="hidden" name="status" value="completed">
						<input type="hidden" name="pid" value="${pid}">
						<input type="hidden" name="password" value="${password}">
						<button type="submit" name="action" class="btn btn-light"
							value="view">Completed</button>
					</form>
				</div>

				<div class="agile-tables">
					<div class="w3l-table-info">
						<table id="table" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th width="5%">Id</th>
									<th width="10%">Date</th>
									<th width="10%">Room</th>
									<th width="10%">Doctor</th>
									<th width="20%">Status</th>
									<th width="5%"></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${appointments}" var="appo">
									<tr>
										<td>${appo.aid}</td>
										<td>${appo.date}</td>
										<td>${appo.room}</td>
										<td>${appo.doctor}</td>
										<td>${appo.status}</td>

										<td>
											<form method="post" action="patientAppoinmentDetails">
												<input type="hidden" name="detail_id" value="${patient.pid}">
												<button type="submit" name="action"
													class="btn btn-info btn-sm" value="view">View</button>
											</form>
										</td>
									</tr>

								</c:forEach>

							</tbody>
						</table>

					</div>
				</div>
				<form action="appointmentAdd" method="post">
					<input type="hidden" name="pid" value="${pid}"> 
					<input type="hidden" name="password" value="${password}">
					<button type="submit" class="btn btn-warning">Schedule New Appointment</button>
				</form>
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
