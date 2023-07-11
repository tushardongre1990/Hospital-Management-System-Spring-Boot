
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Medilab</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- ========================================================  -->
</head>

<body>


  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="/">Medilab</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="/">Home</a></li>
          <li><a class="nav-link scrollto" href="/">Departments</a></li>
          <li><a class="nav-link scrollto" href="/fetch">Admin Login</a></li>
          <li><a class="nav-link scrollto" href="/">Doctors</a></li>
          <li><a class="nav-link scrollto" href="/userAppo">Appointment</a></li>
          <li><a class="nav-link scrollto" href="/aboutus">About US</a></li>
          <li><a class="nav-link scrollto" href="/contactus">Contact US</a></li>
          
          <c:choose>
		    <c:when test="${sessionScope.user_id != null}">
	          <li><a class="nav-link scrollto" href="/logout">LogOut</a></li>
		        
		    </c:when>
		    <c:otherwise>
	          <li><a class="nav-link scrollto" href="/index">LogIn</a></li>
		    </c:otherwise>
		</c:choose>
          
          <li></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="/index" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

    </div>
    
  </header><!-- End Header -->
 


	<section id="appointment" class="appointment section-bg">
		<div class="container">
			<!-- <div class="section-title">
				<h2>Medilab</h2>
			</div> -->
			<div class="row">
				<div class="col m-5">
					<h1>Register</h1>
					<form:form action="/register" method="post"
						modelAttribute="newUser" class="php-email-form">
						<p>
							<form:label path="username">username :</form:label>
							<br>
							<form:input path="username" class="form-control" />
							<br>
							<form:errors path="username" class="danger" />
						</p>
						<p>
							<form:label path="email">email :</form:label>
							<br>
							<form:input path="email" class="form-control" />
							<br>
							<form:errors path="email" class="danger" />
						</p>
						<p>
							<form:label path="age">age :</form:label>
							<br>
							<form:input path="age" class="form-control" />
							<br>
							<form:errors path="age" class="danger" />
						</p>
						<p>
							<form:label path="phone">phone :</form:label>
							<br>
							<form:input path="phone" class="form-control" />
							<br>
							<form:errors path="phone" class="danger" />
						</p>

						<p>
							<form:label path="password" type="password">password :</form:label>
							<br>
							<form:input path="password" type="password" class="form-control" />
							<br>
							<form:errors path="password" class="danger" />
						</p>

						<p>
							<form:label path="confPassword" type="password">confirm password :</form:label>
							<br>
							<form:input path="confPassword" type="password"
								class="form-control" />
							<br>
							<form:errors path="confPassword" class="danger" />
						</p>

						<button class="btn btn-primary" type="submit">Register</button>

					</form:form>
				</div>
				<div class="col m-5">
					<h1>LogIn</h1>
					<form:form action="/login" method="post" modelAttribute="userLogin"
						class="php-email-form">

						<p>
							<form:label path="email">email:</form:label>
							<br>
							<form:input path="email" class="form-control" />
							<br>
							<form:errors path="email" />
						</p>
						<p>
							<form:label path="password" type="password">password :</form:label>
							<br>
							<form:input path="password" type="password" class="form-control" />
							<br>
							<form:errors path="password" />
						</p>

						<button class="btn btn-primary" type="submit">Login</button>


					</form:form>

					<c:choose>
						<c:when test="${sessionScope.user_id != null}">
							<p>Welcome, ${sessionScope.user_id}</p>
							<a href="/logout" class="btn btn-primary">Logout</a>
							<hr>
							<c:if test="${sessionScope.user_id == 'admin@gmail.com'}">
								<h3>All Patients</h3>
								<h3>All Patients</h3>
								<table class="table">
									<thead>
										<tr>
											<th>Username</th>
											<th>Email</th>
											<th>Age</th>
											<th>Phone</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allPatients}" var="patient">
											<tr>
												<td>${patient.username}</td>
												<td>${patient.email}</td>
												<td>${patient.age}</td>
												<td>${patient.phone}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>




								<h3>All Doctors</h3>
								<table class="table">
									<thead>
										<tr>
											<th>Name</th>
											<th>Specialization</th>
											<th>Email</th>
											<th>Phone</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allDoctors}" var="doctor">
											<tr>
												<td>${doctor.name}</td>
												<td>${doctor.specialization}</td>
												<td>${doctor.email}</td>
												<td>${doctor.phone}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</c:if>
						</c:when>
						<c:otherwise>
							<p>Please login to view the content.</p>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</section>
	
		<!-- ======= Footer ======= -->
	<footer id="footer">



		<div class="container d-md-flex py-4">

			<div class="me-md-auto text-center text-md-start">
				<div class="copyright">
					&copy; Copyright <strong><span>Medilab</span></strong>. All Rights
					Reserved
				</div>
				<div class="credits">
					<!-- All the links in the footer should remain intact. -->
					<!-- You can delete the links only if you purchased the pro version. -->
					<!-- Licensing information: https://bootstrapmade.com/license/ -->
					<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/Hospital-free-medical-bootstrap-theme/ -->
					Done by <a href="#">CDAC Students</a>
				</div>
			</div>
			<div class="social-links text-center text-md-right pt-3 pt-md-0">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->
	
	
</body>

</html>