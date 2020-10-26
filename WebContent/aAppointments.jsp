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
       <ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="ahome.jsp">Back</a></li>
		</ul>
		<!-- Links -->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Log out</a></li>
		</ul>
	</nav>
    <br> <br> <br>
    <div class="container">
		<h3>Appointments</h3>
				<hr>
				<div class="btn-group btn-group-toggle" data-toggle="buttons">
					<form method="post" action="#">
						<input type="hidden" name="status" value="submitted">
						<input type="hidden" name="pid" value="${pid}">
						<input type="hidden" name="password" value="${password}">
						<button type="submit" name="action" class="btn btn-light"
							value="view">Submitted</button>
					</form>
					<form method="post" action="#">
						<input type="hidden" name="status" value="ongoing">
						<input type="hidden" name="pid" value="${pid}">
						<input type="hidden" name="password" value="${password}">
						<button type="submit" name="action" class="btn btn-light"
							value="view">On-going</button>
					</form>
					<form method="post" action="#">
						<input type="hidden" name="status" value="completed">
						<input type="hidden" name="pid" value="${pid}">
						<input type="hidden" name="password" value="${password}">
						<button type="submit" name="action" class="btn btn-light"
							value="view">Completed</button>
					</form>
					<form>
					<input class="form-control" id="myInput" type="text" placeholder="Search..">
					</form>
				</div>
<br>
				<div class="agile-tables">
					<div class="w3l-table-info">
						<table class="table table-striped table-bordered" id="myTable">
							<thead>
								<tr>
									<th width="5%">Id</th>
									<th width="10%">Date</th>
									<th width="10%">Room</th>
									<th width="10%">Doctor</th>
									<th width="20%">Status</th>
									<th width="5%"></th>
									<th width="5%"></th>
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
												<input type="hidden" name="detail_id" value="${appo.pid}">
												<button type="submit" name="action"
													class="btn btn-info btn-sm" value="view">View</button>
											</form>
										</td>
										<td>
											<form method="post" action="patientAppointmentEdit">
												<input type="hidden" name="edit_id" value="${appo.pid}">
												<button type="submit" name="action"
													class="btn btn-dark btn-sm" value="view">Edit</button>
											</form>
										</td>
										<td>
											<form method="post" action="#">
												<input type="hidden" name="delete_id" value="${appo.pid}">
												<button type="submit" name="action"
													class="btn btn-danger btn-sm" value="view">Delete</button>
											</form>
										</td>
									</tr>

								</c:forEach>

							</tbody>
						</table>

					</div>
				</div>
	</div>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
    
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy;
				HOSPITAL.IN 2020</p>
		</div>
	</footer>
</body>
</html>
    