<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Purchase</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .cart-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        padding: 10px;
    }
    .cart-item {
        border: 1px solid #ddd;
        border-radius: 5px;
        margin: 10px;
        width: 270px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 8);
        overflow: hidden;
        position: relative;
        transition: transform 0.3s ease; 
    }
    .cart-item:hover {
        transform: translateY(-5px); 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 8); 
    }
    .item-image {
        width: 100%;
        height: 200px;
        border-bottom: 1px solid #ddd;
    }
    .item-details {
        padding: 15px;
    }
    .item-details h3 {
        margin-top: 0;
    }
    .item-details p {
        margin: 5px 0;
        font-size: 14px;
    }
    .item-actions {
        position: absolute; 
        bottom: 0; 
        width: 100%; 
        text-align: right; 
    }
    .remove-btn {
        background-color: #f44336;
        color: white;
        border: none;
        padding: 10px 10px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 18px;
        border-radius: 3px;
        cursor: pointer;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 8);
    }
    .remove-btn:hover {
        background-color: #d32f2f;
    }
    .place-order-btn {
        margin-top: 20px;
        text-align: center;
    }
    .place-order-btn button {
        background-color: #4CAF50; 
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 5px;
    }
    .place-order-btn button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<%@include file="/Compt/NavBuy.jsp" %>
<h2 style="text-align: center;">Your Enrolled Courses<img alt="cart" src="img/contract_11287332.png" width="45px" height="45px"></h2>
<div class="cart-container">
    <c:forEach var="course" items="${cartCourses}">
        <div class="cart-item">
            <img class="item-image" src="${course.imageUrl}" alt="Course Image">
            <div class="item-details">
                <p><strong>Course Name:</strong> ${course.courseName}</p>
                <div style="padding: 20px; text-align: center;">
                    <div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar bg-success" style="width: 50%">50%</div>
                    </div>
                    <div>Learning...</div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
