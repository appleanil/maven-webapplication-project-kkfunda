<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sri Anil Kumar High School</title>

  <!-- Bootstrap CSS -->
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />

  <!-- Custom CSS -->
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      scroll-behavior: smooth;
    }
    .navbar {
      background-color: #007bff;
    }
    .navbar-brand, .nav-link {
      color: white !important;
    }
    .hero {
      background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
        url('https://images.unsplash.com/photo-1600210492493-0946911123ea') no-repeat center center/cover;
      color: white;
      text-align: center;
      padding: 120px 20px;
    }
    .hero h1 {
      font-size: 3rem;
      font-weight: bold;
    }
    .section-title {
      text-align: center;
      margin-top: 60px;
      margin-bottom: 30px;
      font-weight: bold;
      color: #007bff;
    }
    .card {
      border-radius: 15px;
      transition: all 0.3s ease;
    }
    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }
    footer {
      background-color: #007bff;
      color: white;
      text-align: center;
      padding: 20px 0;
      margin-top: 50px;
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Sri Anil Kumar High School</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navMenu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
          <li class="nav-item"><a class="nav-link" href="#staff">Staff</a></li>
          <li class="nav-item"><a class="nav-link" href="#students">Students</a></li>
          <li class="nav-item"><a class="nav-link" href="#subjects">Subjects</a></li>
          <li class="nav-item"><a class="nav-link" href="#sports">Sports</a></li>
          <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <section class="hero">
    <h1>Welcome to Sri Anil Kumar High School</h1>
    <p>Empowering Students with Knowledge, Discipline & Values</p>
    <a href="#about" class="btn btn-light mt-3">Learn More</a>
  </section>

  <!-- About Section -->
  <section id="about" class="container mt-5">
    <h2 class="section-title">About Our School</h2>
    <p class="text-center">
      Sri Anil Kumar High School was established with the mission to provide quality education
      with moral values. Our dedicated faculty, modern classrooms, and extracurricular activities
      create an environment where every student can thrive.
    </p>
  </section>

  <!-- Staff Section -->
  <section id="staff" class="container mt-5">
    <h2 class="section-title">Our Dedicated Staff</h2>
    <div class="row">
      <div class="col-md-4">
        <div class="card text-center p-3">
          <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" class="mx-auto" width="100" alt="Principal">
          <h5 class="mt-3">Mr. Ramesh Kumar</h5>
          <p>Principal, M.Ed, 20+ years of experience</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center p-3">
          <img src="https://cdn-icons-png.flaticon.com/512/4140/4140048.png" class="mx-auto" width="100" alt="Math Teacher">
          <h5 class="mt-3">Mrs. Lakshmi Devi</h5>
          <p>Math Teacher, M.Sc (Maths), 10+ years experience</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center p-3">
          <img src="https://cdn-icons-png.flaticon.com/512/4333/4333609.png" class="mx-auto" width="100" alt="Science Teacher">
          <h5 class="mt-3">Mr. Rajesh Naidu</h5>
          <p>Science Teacher, M.Sc (Physics), 8+ years experience</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Students Section -->
  <section id="students" class="container mt-5">
    <h2 class="section-title">Our Students</h2>
    <p class="text-center">We have over 800 students from Grades 6 to 10 achieving excellence every year.</p>
    <div class="row">
      <div class="col-md-6">
        <ul class="list-group">
          <li class="list-group-item">Total Students: 820</li>
          <li class="list-group-item">Top Achievers: 75</li>
          <li class="list-group-item">Annual Pass Percentage: 98%</li>
        </ul>
      </div>
      <div class="col-md-6 text-center">
        <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c" width="100%" class="rounded" alt="Students" />
      </div>
    </div>
  </section>

  <!-- Subjects Section -->
  <section id="subjects" class="container mt-5">
    <h2 class="section-title">Subjects We Offer</h2>
    <div class="row text-center">
      <div class="col-md-3"><div class="card p-3"><h5>Mathematics</h5></div></div>
      <div class="col-md-3"><div class="card p-3"><h5>Science</h5></div></div>
      <div class="col-md-3"><div class="card p-3"><h5>Social Studies</h5></div></div>
      <div class="col-md-3"><div class="card p-3"><h5>English & Telugu</h5></div></div>
    </div>
  </section>

  <!-- Sports Section -->
  <section id="sports" class="container mt-5">
    <h2 class="section-title">Sports & Activities</h2>
    <p class="text-center">We encourage holistic development through active participation in sports.</p>
    <div class="row text-center">
      <div class="col-md-4"><div class="card p-3"><h5>Cricket</h5></div></div>
      <div class="col-md-4"><div class="card p-3"><h5>Football</h5></div></div>
      <div class="col-md-4"><div class="card p-3"><h5>Badminton</h5></div></div>
    </div>
  </section>

  <!-- Contact Section -->
  <section id="contact" class="container mt-5 mb-5">
    <h2 class="section-title">Contact Us</h2>
    <div class="row">
      <div class="col-md-6">
        <h5>Address:</h5>
        <p>
          Sri Anil Kumar High School,<br />
          Main Road, Vijayawada, Andhra Pradesh - 520001
        </p>
        <h5>Phone:</h5>
        <p>+91 98765 43210</p>
        <h5>Email:</h5>
        <p>info@srianilkumarschool.edu.in</p>
      </div>
      <div class="col-md-6">
        <form id="contactForm">
          <div class="mb-3">
            <input type="text" class="form-control" placeholder="Your Name" required />
          </div>
          <div class="mb-3">
            <input type="email" class="form-control" placeholder="Your Email" required />
          </div>
          <div class="mb-3">
            <textarea class="form-control" rows="4" placeholder="Your Message" required></textarea>
          </div>
          <button class="btn btn-primary w-100" type="submit">Send Message</button>
        </form>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <p>© 2025 Sri Anil Kumar High School | Designed with ❤️ using Bootstrap</p>
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

  <!-- Custom JS -->
  <script>
    // Simple contact form alert
    document.getElementById('contactForm').addEventListener('submit', function(e) {
      e.preventDefault();
      alert('Thank you for contacting Sri Anil Kumar High School!');
      this.reset();
    });
  </script>

</body>
</html>

