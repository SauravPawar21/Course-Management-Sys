<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<link rel="icon" href="/img/online-course_10180838.png" type="image/x-icon" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<style>

.carousel-item {
    height: 570px; 
}

.navbar {
    background-color: #777;
}

.navbar-nav .nav-link, .navbar-brand {
    font-weight: bold;
    color: #fff; 
    font-size: 14px; 
    margin-left: 20px; 
    transition: color 0.3s; 
}

.navbar-brand img {
    height: 45px; 
    margin-right: 10px; 
}

.navbar-brand {
    font-size: 20px; 
}

.navbar-nav .nav-link.active {
    color: #fff; 
}

.navbar-nav .nav-link:hover, .navbar-nav .nav-link.active:hover {
    color: rgb(70, 230, 222);
}

.navbar-brand:hover {
    color: rgb(70, 230, 222);
}
</style>

</head>
<body>
<header>
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">
      <img src="/img/online-course_10180838.png" alt="Courses">
      Courses
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="Home.jsp"><i class="fas fa-home"></i> Home</a>
        <a class="nav-link" href="Register.jsp"><i class="fas fa-user-plus"></i> Register</a>
        <a class="nav-link" href="Login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
        <a class="nav-link" href="#"><i class="fas fa-book"></i> Courses</a>
        <a class="nav-link" href="#"><i class="fas fa-chart-line"></i> Progress</a>
      </div>
    </div>
  </div>
</nav>
</header>

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/FrontEnd.webp" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>FrontEnd Course</h5>
       <p>Explore the world of FrontEnd development with our comprehensive course.</p>

      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/BackEnd.avif" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>BackEnd Course</h5>
        <p>Master the art of server-side programming and database management in our Backend Course.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/FullStack-transformed.jpeg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>FullStack Course</h5>
        <p>Dive into both FrontEnd and Backend development and become a versatile FullStack developer.</p>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
