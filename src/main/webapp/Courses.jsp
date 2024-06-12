<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0,7);
            padding: 20px;
            width: 230px;
        }

        .card img {
            width: 100%;
            height: 200px;
            border-radius: 8px 8px 8px 8px;
            margin-bottom: 15px;
        }

        .card-content {
            display: flex;
            flex-direction: column; 
            align-items: left;
        }

        .card-content p {
            margin: 5px 0; 
        }

        .cart-button {
            margin-top: 10px; 
        }
    </style>
</head>
<body>

<h1>Explore Courses <img alt="Cart" src="/img/shopping-cart_229082.png" width="40px" height="40px"></h1>
<div class="card-container">
    <c:forEach var="course" items="${userCourses}">
        <div class="card">
            <c:if test="${not empty course.imageUrl}">
                <a href="ViewCourseDesc.jsp?courseId=${course.id}&amp;name=${course.name}&amp;price=${course.price}&amp;imageUrl=${course.imageUrl}&amp;description=${course.description}">
                    <img src="${course.imageUrl}" alt="${course.name}">
                </a>
            </c:if>

            <div class="card-content">
                <p><strong>Name:</strong> ${course.name}</p><hr>
                <p><strong>Price:</strong> ${course.price}</p><hr>
                <p><strong>Description:</strong> ${course.description}</p>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
