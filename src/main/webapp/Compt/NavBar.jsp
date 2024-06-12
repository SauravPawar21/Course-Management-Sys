<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<link rel="icon" href="/img/online-course_10180838.png" type="image/x-icon" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<style>
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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
