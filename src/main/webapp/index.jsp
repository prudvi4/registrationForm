<%@page import="java.sql.Connection"%>
<%@page import="com.registration.form.db.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<style type="text/css">
.bg-custom {
	background-color: #2196f3;
}
</style>

</head>
<body>

	<!-- Navbar Start Section  -->
	<nav class="navbar navbar-expand-lg  bg-custom">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Registration Form</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="index.jsp">Register</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- Navbar End Section -->




	<!-- Form Start Section -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-header bg-custom">
						<h4 class="text-center text-white">Registration Form</h4>
					</div>
					<div class="card-body">
					  <%
					  String sucMsg=(String)session.getAttribute("SuccessMsg");
					  String errMsg=(String)session.getAttribute("ErrorMsg");					  
					  if(sucMsg != null){
						  %>
						  		<h5 class="text-center text-success"><%= sucMsg %>  </h5>
						  <%
						  session.removeAttribute("SuccessMsg");
					  }
					  
					  if(errMsg != null){
						  %>
						  		<h5 class="text-center text-danger"><%= errMsg %>  </h5>
						  <%
					  }
					  session.removeAttribute("ErrorMsg");
					  
					  %>
						<form action="RegisterServlet" method="post">
							<!-- Full Name  -->
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Full
									Name</label> <input name="fname" type="text" class="form-control"
									id="exampleInputEmail1" required aria-describedby="emailHelp">
							</div>
							<!-- Email Address  -->
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									Address</label> <input name="email" type="email" class="form-control"
									id="exampleInputEmail1" required aria-describedby="emailHelp">
							</div>
							<!-- DOB -->
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">DOB </label>
								<input name="dob" type="date" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required>
							</div>

							<!-- Address -->
							<div class="form-floating">
								<textarea name="address" class="form-control"
									placeholder="Leave a comment here" id="floatingTextarea2"
									style="height: 100px" required></textarea>
								<label for="floatingTextarea2">Address</label>
							</div>

							<!-- Phone Number -->
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									Number</label> <input  name="phno" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>
							</div>

							<!-- Gender -->
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									name="inlineRadioOptions" id="inlineRadio1" value="male">
								<label class="form-check-label" for="inlineRadio1">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									name="inlineRadioOptions" id="inlineRadio2" value="female">
								<label class="form-check-label" for="inlineRadio2">Female</label>
							</div>

							<!-- Password  -->
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input name="password" type="password" class="form-control"
									id="exampleInputPassword1" required>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Form End Section -->






	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>