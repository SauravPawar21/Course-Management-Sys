<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
    <link rel="icon" href="/img/online-course_10180838.png" type="image/x-icon" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            display: flex;
            justify-content: center; 
            margin: 40px;
        }
        
        .card {
            margin: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: transform 0.3s ease;
            height: 400px; 
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        
        .card:hover {
            transform: translateY(-5px);
        }
        
        .card-body {
            padding: 1.25rem;
            text-align: center; 
        }

        .card-img-top {
            height: 300px; 
            object-fit: cover; 
        }

        .btn-container {
            display: flex;
            justify-content: center; 
            margin-top: auto; 
        }
        .btn-primary:hover {
            background-color: rgb(28, 149, 156) !important;
        }
    </style>
</head>
<body>
    <%@include file="/Compt/NavBar.jsp" %>  
    <div class="container">
        <div class="card" style="width: 18rem;">
            <img src="/img/close-up-person-holding-smartphone.jpg" class="card-img-top" alt="Courses">
            <div class="card-body">
                <h5 class="card-title"></h5>
                <div class="btn-container">
                    <form action="AddCourses.jsp" method="get">
                        <button type="submit" class="btn btn-primary">Add Courses</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="/img/webanalyst_online_4.jpg" class="card-img-top" alt="Manage Courses">
            <div class="card-body">
                <h5 class="card-title"></h5>
                <div class="btn-container">
                    <form action="ManageCourses.jsp" method="get">
                        <button type="submit" class="btn btn-primary">Manage Courses</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="/img/3911323.jpg" class="card-img-top" alt="Logout">
            <div class="card-body">
                <h5 class="card-title"></h5>
                <div class="btn-container">
                    <form action="Home.jsp" method="get">
                        <button type="submit" class="btn btn-primary">Logout</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
