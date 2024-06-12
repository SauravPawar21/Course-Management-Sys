<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Course Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #171717;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 10px;
        }

        .left-section {
            flex: 1;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.001);
        }

        .left-section img {
            width: 100%;
            height: 300px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
        }

        .left-section h2 {
            text-align: center;
        }

        .right-section {
            flex: 2;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .right-section h2 {
            font-weight: bold;
            color: #333;
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
        }

        .right-section p {
            margin: 20px 0;
            color: #555;
            font-size: 16px;
        }

        .right-section .btn-container {
            margin-top: 40px;
            text-align: center;
        }

        .right-section button {
            background-color: #41d3a2;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 12px 24px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
        }

        .right-section button:hover {
            background-color: #28a745;
        }
    </style>
</head>
<body>
<%@include file="/Compt/NavCourses.jsp" %>
<div class="container">
    <div class="left-section">
    <h2>Course Image</h2><hr>
    <img src="${param.imageUrl}" alt="${param.courseName}">
</div>
<div class="right-section">
    <h2>Description</h2>
    <div>
        <p><strong>Course Name:</strong> ${param.courseName}</p>
        <p><strong>Price:</strong> ${param.price}</p>
        <p><strong>Description:</strong> ${param.courseDesc}</p>
    </div>
    <div class="btn-container">
        <form action="/addToCart" method="post">
            <input type="hidden" name="courseName" value="${param.courseName}">
            <input type="hidden" name="price" value="${param.price}">
            <input type="hidden" name="courseDesc" value="${param.courseDesc}">
            <input type="hidden" name="imageUrl" value="${param.imageUrl}"><br>
            <div class="btn-container">
                <button type="submit">Buy</button>
            </div>
        </form>
    </div>
</div>

</div>


</body>
</html>
