<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
					<button type="submit" class="btn btn-dark">Home</button>
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


	<%
	int id = -1;
	String n =null;
	String sql = "select * from doctors where certificate='Valid'";
	Connection con = Dbcon.getCon();
	Statement st1 = con.createStatement();
	ResultSet rs1 = st1.executeQuery(sql);
	Statement st2 = con.createStatement();
	ResultSet rs2 = st2.executeQuery(sql);
	%>

	<div class="container">
		<h3>New Appointment</h3>
		<hr>
		<form action="appointmentSave" method="post">
			<input type="hidden" name="pid" value="${pid}"> 
			<input type="hidden" name="password" value="${password}"> 
			<input type="hidden" name="status" value="submitted">
			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Pid: </label> <input
							class="form-control" type="text" placeholder="${pid}" readonly>
					</div>
				</div>
			</div>

			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Appointment Id: </label> <input
							class="form-control" type="text" name="aid" required="">
					</div>
				</div>
				
				<div class="col">
					<div class="form-group">
						<label class="control-label">Doctor Name: </label> 
						<select name="doctor" class="form-control">
							<option value="null">Select One</option>
							<%
								while (rs1.next()) {
									n = rs1.getString("name");
							%>
							        <option value="<%=n%>"><%=n%></option>
							<%
								}
							%>
						</select>
					</div>
				</div>
				
				<div class="col">
					<div class="form-group">
						<label class="control-label">Doctor Id: </label> 
						<select name="did" class="form-control">
							<option value="-1">Select One</option>
							<%	while (rs2.next()) {
									id = rs2.getInt("workid");
							%>
							          <option value="<%=id%>"><%=id%></option>
							<%
								}
							%>
						</select>
					</div>
				</div>
			</div>

			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Date: </label> <input
							class="form-control" type="text" name="date" required="">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label class="control-label">Room: </label> <input
							class="form-control" type="text" name="room" required="">
					</div>
				</div>

			</div>


			<div class="form-row">
				<div class="col">
					<div class="form-group">
						<label class="control-label">Status: </label> <input
							class="form-control" placeholder="submitted" required="" readonly>
					</div>
				</div>
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>

		<form action="patientAppointmentManage" method="post">
			<input type="hidden" name="pid" value="${pid}"> <input
				type="hidden" name="password" value="${password}">
			<div class="form-group">
				<button type="submit" class="btn btn-dark">Cancel</button>
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
