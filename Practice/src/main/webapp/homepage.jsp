<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carsercice Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="Homepag.css">
 </head>
 <body>
 <div class="container">
    <div class="row mt-2">
      <div class="col-sm-4 logo bg-light">
         <h2>JANTA<span>Garage</span></h2>
      </div>
      <div class="col-sm-8 Navbar">
        <nav class="navbar navbar-expand-lg bg-body-secondary">
            <div class="container">
              <a class="navbar-brand" href="#"><span>Royal</span>Car</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                     <a class="nav-link" href="Adminlogin.html">Admin</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="Employelogin.jsp">Employee</a>
                  </li>
                 <li class="nav-item">
                      <a class="nav-link" href="CustomerLogin.jsp">Appointment</a>
                   </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#Sercices">Services</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#Team">Team</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#Review">Reviews</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                 </li>
                  
                </ul>
               
              </div>
            </div>
          </nav>
      </div>
  </div>

  <div class="row carsoul">
    <div class="col-sm-12">
        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="imges/img2" class="d-block w-100 " alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h3 class="animated fadeInDown" style="animation-delay:1s;">AUTO REPAIR</h3>
                  <h1 class="servic">SERVICES</h1>

                  <p>We all take care of all your auto repair needs: breaks, tires, oil, and everything in between..........</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="imges/redcaar" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h3 class="animated fadeInDown" style="animation-delay:1s;">AUTO REPAIR</h3>
                    <h1 class="servic">SERVICES</h1>
  
                  <p>We all take care of all your auto repair needs: breaks, tires, oil, and everything in between..........</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="imges/crosouls" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h3 class="animated fadeInDown" style="animation-delay:1s;">AUTO REPAIR</h3>
                    <h1 class="servic">SERVICES</h1>
  
                  <p>We all take care of all your auto repair needs: breaks, tires, oil, and everything in between..........</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
     </div>
  </div>
  <div class="row about" id="about">
    <h1>About<span>US</span></h1>
    <div class="col-sm-6">
      <img src="imges/about@.jpg">
    </div>
    <div class="col-sm-6">
      <h2>Royal<span>Car</span> Service</h2>
      <p>When it comes to repairing or doing checkups on your car's, all our team combined has almost a 
        century of practical experience. We aim to make our service as reasonably priced as possible. 
        That's why we cut on all unessential business expenses.</p>
        <h2>Why Choose Us</h2>
        <ul>
          <li>FREE Loaner Cars;</li>
          <li>FREE Shuttle Service;</li>
          <li>Te Dent repair</li>
          <li>Paint scratch repair</li>
          <li>Tire installation</li>
          <li>Wheel alinment</li>
        </ul>
    </div>
  </div>
  

 <div class="row Services" id="Sercices">
  <h2>OUR<span>SERVICE</span></h2>
    <div class="col-12 Card">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
              <div class="card h-100">
                <img src="imges/oil3.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Oil change</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer">
                  <small class="text-body-secondary">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="imges/img6.png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Tir installation</h5>
                  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                </div>
                <div class="card-footer">
                  <small class="text-body-secondary">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="imges/air.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Air Conditioning</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                </div>
                <div class="card-footer">
                  <small class="text-body-secondary">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
          </div>
    </div>
    </div>

    <div class="row Team" id="Team">
      <h2>OUR<span>TEAM</span></h2>
      <div class="col-12">
        <div class="card-group">
          <div class="card">
            <img src="imges/sam" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Sam</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
          </div>
          <div class="card">
            <img src="imges/Alisa" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Alisa</h5>
              <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
          </div>
          <div class="card">
            <img src="imges/Parker" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Parker</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
          </div>
        </div>
        
      </div>
    </div>
                                               <!----------------------------- OUR REVIEW -------------------------------->
    <div class="row Review" id="Review">
      <div class="textR">
        <h2>OUR <SPan>REVIEW</SPan></h2>
        <section>
          <div class="row d-flex justify-content-center">
           
        
          <div class="row text-center d-flex align-items-stretch">
            <div class="col-md-4 mb-5 mb-md-0 d-flex align-items-stretch">
              <div class="card testimonial-card">
                <div class="card-up" style="background-color: #9d789b;"></div>
                <div class="avatar mx-auto bg-white">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(1).webp"
                    class="rounded-circle img-fluid" />
                </div>
                <div class="card-body">
                  <h4 class="mb-4">Maria Smantha</h4>
                  <hr />
                  <p class="dark-grey-text mt-4">
                    <i class="fas fa-quote-left pe-2"></i>Lorem ipsum dolor sit amet eos adipisci,
                    consectetur adipisicing elit.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-5 mb-md-0 d-flex align-items-stretch">
              <div class="card testimonial-card">
                <div class="card-up" style="background-color: #7a81a8;"></div>
                <div class="avatar mx-auto bg-white">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(2).webp"
                    class="rounded-circle img-fluid" />
                </div>
                <div class="card-body">
                  <h4 class="mb-4">Lisa Cudrow</h4>
                  <hr />
                  <p class="dark-grey-text mt-4">
                    <i class="fas fa-quote-left pe-2"></i>Neque cupiditate assumenda in maiores
                    repudi mollitia architecto.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-0 d-flex align-items-stretch">
              <div class="card testimonial-card">
                <div class="card-up" style="background-color: #6d5b98;"></div>
                <div class="avatar mx-auto bg-white">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(9).webp"
                    class="rounded-circle img-fluid" />
                </div>
                <div class="card-body">
                  <h4 class="mb-4">John Smith</h4>
                  <hr />
                  <p class="dark-grey-text mt-4">
                    <i class="fas fa-quote-left pe-2"></i>Delectus impedit saepe officiis ab
                    aliquam repellat rem unde ducimus.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </section>
      
    </div>
 
 <!-- Contact form -->
  <dic class="row Contact" >
    <div class="col-12">
      <!-- Contact 1 - Bootstrap Brain Component -->

      <h2>CONTACT<span>US</span></h2>
  <div class="container">
    <div class="row justify-content-lg-center">
      <div class="col-12 col-lg-9" id="contact">
        <div class=" border rounded shadow-sm overflow-hidden">

          <form action="#!">
            <div class="row gy-4 gy-xl-5 p-4 p-xl-5">
              <div class="col-12">
                <label for="fullname" class="form-label">Full Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="fullname" name="fullname" value="" required>
              </div>
              <div class="col-12 col-md-6">
                <label for="email" class="form-label">Email <span class="text-danger">*</span></label>
                <div class="input-group">
                  <span class="input-group-text">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                      <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z" />
                    </svg>
                  </span>
                  <input type="email" class="form-control" id="email" name="email" value="" required>
                </div>
              </div>
              <div class="col-12 col-md-6">
                <label for="phone" class="form-label">Phone Number</label>
                <div class="input-group">
                  <span class="input-group-text">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                      <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                    </svg>
                  </span>
                  <input type="tel" class="form-control" id="phone" name="phone" value="">
                </div>
              </div>
              <div class="col-12">
                <label for="message" class="form-label">Message <span class="text-danger">*</span></label>
                <textarea class="form-control" id="message" name="message" rows="3" required></textarea>
              </div>
              <div class="col-12">
                <div class="d-grid">
                  <div class="button">
                    
                    <button data-mdb-ripple-init type="button" class="btn btn-primary btn-block mb-4">Submit </button>
                </div>
                  </div>
              </div>
            </div>
          </form>

        </div>
      </div>
    </div>
  </div>
 </section>
    </div>
  </dic>
   <div id="footer">
    <div class="row footer">
      <h2>foo<span>ter</span></h2>
      <div class="col-12">
        <div class="container my-5">

          <!-- Footer -->
          <footer
                  class="text-center text-lg-start text-white"
                  style="background-color: #1c2331"
                  >
            <!-- Section: Social media -->
            <section
                     class="d-flex justify-content-between p-4"
                     style="background-color: #ff004f"
                     >
              <!-- Left -->
              <div class="me-5">
                <span>Get connected with us on social networks:</span>
              </div>
              <!-- Left -->
        
              <!-- Right -->
              <div>
                <a href="" class="text-white me-4">
                  <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="text-white me-4">
                  <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="text-white me-4">
                  <i class="fab fa-google"></i>
                </a>
                <a href="" class="text-white me-4">
                  <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="text-white me-4">
                  <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="text-white me-4">
                  <i class="fab fa-github"></i>
                </a>
              </div>
              <!-- Right -->
            </section>
            <!-- Section: Social media -->
        
            <!-- Section: Links  -->
            <section class="">
              <div class="container text-center text-md-start">
                <!-- Grid row -->
                <div class="row mt-3">
                  <!-- Grid column -->
                  <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold">Company name</h6>
                    <hr
                        class="mb-4 mt-0 d-inline-block mx-auto"
                        style="width: 60px; background-color: #ff004f; height: 2px"
                        />
                    <p>
                      Here you can use rows and columns to organize your footer
                      content. Lorem ipsum dolor sit amet, consectetur adipisicing
                      elit.
                    </p>
                  </div>
                  <!-- Grid column -->
        
                  <!-- Grid column -->
                  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold">Products</h6>
                    <hr
                        class="mb-4 mt-0 d-inline-block mx-auto"
                        style="width: 60px; background-color: #ff004fff; height: 2px"
                        />
                    <p>
                      <a href="#!" class="text-white">MDBootstrap</a>
                    </p>
                    <p>
                      <a href="#!" class="text-white">MDWordPress</a>
                    </p>
                    <p>
                      <a href="#!" class="text-white">BrandFlow</a>
                    </p>
                    <p>
                      <a href="#!" class="text-white">Bootstrap Angular</a>
                    </p>
                  </div>
                  <!-- Grid column -->
        
                  <!-- Grid column -->
                  <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold">Useful links</h6>
                    <hr
                        class="mb-4 mt-0 d-inline-block mx-auto"
                        style="width: 60px; background-color:#ff004f; height: 2px"
                        />
                    <p>
                      <a href="#!" class="text-white">Your Account</a>
                    </p>
                    <p>
                      <a href="#!" class="text-white">Become an Affiliate</a>
                    </p>
                    <p>
                      <a href="#!" class="text-white">Shipping Rates</a>
                    </p>
                    <p>
                      <a href="#!" class="text-white">Help</a>
                    </p>
                  </div>
                  <!-- Grid column -->
        
                  <!-- Grid column -->
                  <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold">Contact</h6>
                    <hr
                        class="mb-4 mt-0 d-inline-block mx-auto"
                        style="width: 60px; background-color: #ff4da6; height: 2px"
                        />
                    <p><i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
                    <p><i class="fas fa-envelope mr-3"></i> info@example.com</p>
                    <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                    <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                  </div>
                  <!-- Grid column -->
                </div>
                <!-- Grid row -->
              </div>
            </section>
            <!-- Section: Links  -->
        
            <!-- Copyright -->
            <div
                 class="text-center p-3"
                 style="background-color: rgba(0, 0, 0, 0.2)"
                 >
              © 2020 Copyright:
              <a class="text-white" href="https://mdbootstrap.com/"
                 >MDBootstrap.com</a
                >
            </div>
            <!-- Copyright -->
          </footer>
          <!-- Footer -->
        
        </div>
        <!-- End of .container -->
      </div>
    </div>
   </div>
    </div>
</div>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>