<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
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

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="/">Medilab</a>
			</h1>


			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link scrollto active" href="/">Home</a></li>
					<li><a class="nav-link scrollto" href="#Departments">Departments</a></li>
					<li><a class="nav-link scrollto" href="/fetch">Admin Login</a></li>
					<li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
					<li><a class="nav-link scrollto" href="/userAppo">Appointment</a></li>
					<li><a class="nav-link scrollto" href="/aboutus">About US</a></li>
					<li><a class="nav-link scrollto" href="/contactus">Contact
							US</a></li>
					<li><a class="nav-link scrollto" href="/">LogOut
							</a></li>

				
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
	<main id="main">
		<section>
			<div class="container">
				<table class="table  table-striped mt-5">
					<thead>
						<tr>
							<!-- <th scope="col">Sr No.</th> -->
							<th scope="col">Major</th>
							<th scope="col">Doctors Name</th>
							<th scope="col">Description</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="doctor" items="${doctors}">
							<tr>

								<!-- <th scope="row"></th> -->
								<td><c:out value="${doctor.major}" /></td>
								<td><c:out value="${doctor.name}" /></td>
								<td><c:out value="${doctor.docdesc}" /></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="fixed-bottom">



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