<%-- 
    Document   : notice
    Created on : Sep 21, 2022, 3:20:49 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>Educenter</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- animation css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/venobox/venobox.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">

</head>

<body>
  

<!-- header -->
<header class="fixed-top header">
  <!-- top header -->
  <div class="top-header py-2 bg-white">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-lg-4 text-center text-lg-left">
          <a class="text-color mr-3" href="callto:+443003030266"><strong>CALL</strong> +44 300 303 0266</a>
          <ul class="list-inline d-inline">
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-facebook"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-linkedin"></i></a></li>
            <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-instagram"></i></a></li>
          </ul>
        </div>
        <div class="col-lg-8 text-center text-lg-right">
          <ul class="list-inline">
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="notice.jsp">notice</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="research.jsp">research</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="scholarship.jsp">SCHOLARSHIP</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#loginModal">login</a></li>
            <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#signupModal">register</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- navbar -->
  <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="logo"></a>
        <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
          aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navigation">
          <ul class="navbar-nav ml-auto text-center">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="courses.jsp">COURSES</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="events.jsp">EVENTS</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="blog.jsp">BLOG</a>
            </li>
            <li class="nav-item dropdown view">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Pages
              </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="teacher.jsp">Teacher</a>
                <a class="dropdown-item" href="teacher-single.jsp">Teacher Single</a>
                <a class="dropdown-item" href="notice.jsp">Notice</a>
                <a class="dropdown-item" href="notice-single.jsp">Notice Details</a>
                <a class="dropdown-item" href="research.jsp">Research</a>
                <a class="dropdown-item" href="scholarship.jsp">Scholarship</a>
                <a class="dropdown-item" href="course-single.jsp">Course Details</a>
                <a class="dropdown-item" href="event-single.jsp">Event Details</a>
                <a class="dropdown-item" href="blog-single.jsp">Blog Details</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">CONTACT</a>
            </li>
          </ul>
        </div>
      </nav>
    </div>
  </div>
</header>
<!-- /header -->
<!-- Modal -->
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">
            <div class="modal-header border-0">
                <h3>Register</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="login">
                    <form action="#" class="row">
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupPhone" name="signupPhone" placeholder="Phone">
                        </div>
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupName" name="signupName" placeholder="Name">
                        </div>
                        <div class="col-12">
                            <input type="email" class="form-control mb-3" id="signupEmail" name="signupEmail" placeholder="Email">
                        </div>
                        <div class="col-12">
                            <input type="password" class="form-control mb-3" id="signupPassword" name="signupPassword" placeholder="Password">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">SIGN UP</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">
            <div class="modal-header border-0">
                <h3>Login</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" class="row">
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginPhone" name="loginPhone" placeholder="Phone">
                    </div>
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginName" name="loginName" placeholder="Name">
                    </div>
                    <div class="col-12">
                        <input type="password" class="form-control mb-3" id="loginPassword" name="loginPassword" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Notice</a></li>
          <li class="list-inline-item text-white h3 font-secondary"></li>
        </ul>
        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- notice -->
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <ul class="list-unstyled">
          <!-- notice item -->
          <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
            <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">30</span> APR,2019</div>
            <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
              <a href="notice-single.jsp" class="h4 mb-3 d-block">Teaching Materials and Testing Methods</a>
              <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
            </div>
            <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
          </li>
          <!-- notice item -->
          <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
            <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">27</span> APR,2019</div>
            <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
              <a href="notice-single.jsp" class="h4 mb-3 d-block">Biltong sirloin sausage brisket porchetta prosciutto</a>
              <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
            </div>
            <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
          </li>
          <!-- notice item -->
          <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
            <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">25</span> APR,2019</div>
            <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
              <a href="notice-single.jsp" class="h4 mb-3 d-block">Teaching Materials and Testing Methods</a>
              <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
            </div>
            <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
          </li>
          <!-- notice item -->
          <li class="d-md-table mb-4 w-100 border-bottom hover-shadow">
            <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">23</span> APR,2019</div>
            <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
              <a href="notice-single.jsp" class="h4 mb-3 d-block">Biltong sirloin sausage brisket porchetta prosciutto</a>
              <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt perferendis saepe omnis officia! Doloribus quae maiores laboriosam praesentium enim fugiat ipsam laudantium assumenda!</p>
            </div>
            <div class="d-md-table-cell text-right pr-0 pr-md-4"><a href="notice-single.jsp" class="btn btn-primary">read more</a></div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /notice -->

<!-- footer -->
<footer>
  <!-- newsletter -->
  <div class="newsletter">
    <div class="container">
      <div class="row">
        <div class="col-md-9 ml-auto bg-primary py-5 newsletter-block">
          <h3 class="text-white">Subscribe Now</h3>
          <form action="#">
            <div class="input-wrapper">
              <input type="email" class="form-control border-0" id="newsletter" name="newsletter" placeholder="Enter Your Email...">
              <button type="submit" value="send" class="btn btn-primary">Join</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- footer content -->
  <div class="footer bg-footer section border-bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-sm-8 mb-5 mb-lg-0">
          <!-- logo -->
          <a class="logo-footer" href="index.jsp"><img class="img-fluid mb-4" src="images/logo.png" alt="logo"></a>
          <ul class="list-unstyled">
            <li class="mb-2">23621 15 Mile Rd #C104, Clinton MI, 48035, New York, USA</li>
            <li class="mb-2">+1 (2) 345 6789</li>
            <li class="mb-2">+1 (2) 345 6789</li>
            <li class="mb-2">contact@yourdomain.com</li>
          </ul>
        </div>
        <!-- company -->
        <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
          <h4 class="text-white mb-5">COMPANY</h4>
          <ul class="list-unstyled">
            <li class="mb-3"><a class="text-color" href="about.jsp">About Us</a></li>
            <li class="mb-3"><a class="text-color" href="teacher.jsp">Our Teacher</a></li>
            <li class="mb-3"><a class="text-color" href="contact.jsp">Contact</a></li>
            <li class="mb-3"><a class="text-color" href="blog.jsp">Blog</a></li>
          </ul>
        </div>
        <!-- links -->
        <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
          <h4 class="text-white mb-5">LINKS</h4>
          <ul class="list-unstyled">
            <li class="mb-3"><a class="text-color" href="courses.jsp">Courses</a></li>
            <li class="mb-3"><a class="text-color" href="#">Events</a></li>
            <li class="mb-3"><a class="text-color" href="#">Gallary</a></li>
            <li class="mb-3"><a class="text-color" href="#">FAQs</a></li>
          </ul>
        </div>
        <!-- support -->
        <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
          <h4 class="text-white mb-5">SUPPORT</h4>
          <ul class="list-unstyled">
            <li class="mb-3"><a class="text-color" href="#">Forums</a></li>
            <li class="mb-3"><a class="text-color" href="#">Documentation</a></li>
            <li class="mb-3"><a class="text-color" href="#">Language</a></li>
            <li class="mb-3"><a class="text-color" href="#">Release Status</a></li>
          </ul>
        </div>
        <!-- support -->
        <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
          <h4 class="text-white mb-5">RECOMMEND</h4>
          <ul class="list-unstyled">
            <li class="mb-3"><a class="text-color" href="#">WordPress</a></li>
            <li class="mb-3"><a class="text-color" href="#">LearnPress</a></li>
            <li class="mb-3"><a class="text-color" href="#">WooCommerce</a></li>
            <li class="mb-3"><a class="text-color" href="#">bbPress</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- copyright -->
  <div class="copyright py-4 bg-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-7 text-sm-left text-center">
          <p class="mb-0">Copyright
            <script>
              var CurrentYear = new Date().getFullYear()
              document.write(CurrentYear)
            </script> 
            © Theme By <a href="https://themefisher.com">themefisher.com</a></p> . All Rights Reserved.
        </div>
        <div class="col-sm-5 text-sm-right text-center">
          <ul class="list-inline">
            <li class="list-inline-item"><a class="d-inline-block p-2" href="https://www.facebook.com/themefisher"><i class="ti-facebook text-primary"></i></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="https://www.twitter.com/themefisher"><i class="ti-twitter-alt text-primary"></i></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="#"><i class="ti-instagram text-primary"></i></a></li>
            <li class="list-inline-item"><a class="d-inline-block p-2" href="https://dribbble.com/themefisher"><i class="ti-dribbble text-primary"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- /footer -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="plugins/slick/slick.min.js"></script>
<!-- aos -->
<script src="plugins/aos/aos.js"></script>
<!-- venobox popup -->
<script src="plugins/venobox/venobox.min.js"></script>
<!-- mixitup filter -->
<script src="plugins/mixitup/mixitup.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>

</body>
</html>
