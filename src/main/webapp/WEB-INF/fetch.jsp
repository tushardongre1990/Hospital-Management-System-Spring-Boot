
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Hospital</title>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>


	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="/">Medilab</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link scrollto active" href="/">Home</a></li>
					<li><a class="nav-link scrollto" href="/">Departments</a></li>
					<li><a class="nav-link scrollto" href="/fetch">Admin Login</a></li>
					<li><a class="nav-link scrollto" href="/">Doctors</a></li>
					<li><a class="nav-link scrollto" href="/">Appointment</a></li>
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
			</nav>
			<!-- .navbar -->

			<a href="/index" class="appointment-btn scrollto"><span
				class="d-none d-md-inline">Make an</span> Appointment</a>

		</div>

	</header>
	<!-- End Header -->

	
	
	
	
	<section id="contactus" class="section-title">
			<div class="contact-container">
				<form action="fetch" method="POST">
				<input type="text" name="username" placeholder="Username"><br>
				<input type="password" name="password" placeholder="Password">
				<button type="submit">Login</button>
			</form>
			</div>
		</section>
	
</body>

</html>

