 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Hospital</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- ========================================================  -->
</head>

<body>
		    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>


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

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h1>Welcome to Medilab</h1>
      <h2></h2>
      
    </div>
  </section><!-- End Hero -->

  <main id="main">

    
  

<!-- ======= About Us Section ======= -->
		<section id="aboutus" class="doctors">
			<div class="container">

				<div class="section-title">
					<h2>About Us</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row">

				<div class="col-lg-6 mt-4">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="assets/img/aboutus/Tushar.jpeg" class="img-fluid"
									alt="">
							</div>
							<div class="member-info">
								<h4>Tushar Dongre</h4>
								<span>Chief Operating Officer</span>
								<p>Executes the company's long-term goals.</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

				<div class="col-lg-6 mt-4">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="assets/img/aboutus/Rahul.jpeg" class="img-fluid"
									alt="">
							</div>
							<div class="member-info">
								<h4>Rahul Mankar</h4>
								<span>Chief Technical Officer</span>
								<p>Manages the company's finances.</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 mt-4">
						<div class="member d-flex align-items-start">
							<div class="pic">
								<img src="assets/img/aboutus/Ashitosh.png" class="img-fluid"
									alt="">
							</div>
							<div class="member-info">
								<h4>Ashitosh Vidhate</h4>
								<span>Chief Financial Officer</span>
								<p>Manages the company's finances.</p>
								<div class="social">
									<a href=""><i class="ri-twitter-fill"></i></a> <a href=""><i
										class="ri-facebook-fill"></i></a> <a href=""><i
										class="ri-instagram-fill"></i></a> <a href=""> <i
										class="ri-linkedin-box-fill"></i>
									</a>
								</div>
							</div>
						</div>
					</div>



				</div>

			</div>
		</section>
		<!-- End About Us Section -->

  </main><!-- End #main -->
  
  

  <!-- ======= Footer ======= -->
  <footer id="footer">

  

    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Medilab</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          
          Done by <a href="#">CDAC Students</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>

</html>

  