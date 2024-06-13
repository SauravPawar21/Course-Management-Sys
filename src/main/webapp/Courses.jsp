<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User View Courses</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    button {
        background-color: #41d3a2;
        color: white;
        border: none;
        border-radius: 4px;
        padding: 12px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #28a745;
    }

    button a {
        text-decoration: none;
        color: white;
    }

    .card-container {
        display: flex;
        flex-wrap: wrap; 
        justify-content: center; 
        gap: 21px; 
        padding: 15px; 
        margin-top: 11px;
    }

    .card {
        margin: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: transform 0.3s ease;
        width: 18rem; 
        background-color: white; 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
    }

    .card img {
        width: 100%;
        height: 200px;
        border-radius: 5px 5px 0 0; 
        object-fit: cover; 
    }

    .card-body {
        padding: 1.25rem;
    }

    .card-content {
        display: flex;
        flex-direction: column; 
        align-items: left;
    }

    .card-content p {
        margin: 5px 0; 
    }
</style>
</head>
<body>

<h1>Explore Courses <img alt="Cart" src="/img/arrow_16299752.png" width="47px" height="47px"></h1>
<div class="card-container">
    <c:forEach var="course" items="${cslist}">
        <div class="card">
            <c:if test="${not empty course.imageUrl}">
                <a href="CourseDescp.jsp?courseId=${course.id}&amp;courseName=${course.courseName}&amp;price=${course.price}&amp;courseDesc=${course.courseDesc}&amp;imageUrl=${course.imageUrl}">
                    <img src="${course.imageUrl}" alt="${course.courseName}">
                </a>
            </c:if>

            <div class="card-body">
                <div class="card-content">
                    <p><strong>Name:</strong> ${course.courseName}</p><hr>
                    <p><strong>Price:</strong> ${course.price}</p><hr>
                    <p><strong>Description:</strong> ${course.courseDesc}</p>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
