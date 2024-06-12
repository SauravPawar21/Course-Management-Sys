<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Course</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        form {
            max-width: 600px; 
            margin: 50px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
            display: flex; 
        }
        .course-image-container {
            flex: 1; 
            padding-right: 20px; 
            margin-top: 27px;
            border-radius: 5px;
        }
        .course-details {
            flex: 2; 
        }
        .course-image {
            max-width: 100%; 
            height: auto; 
            margin-bottom: 20px;
             border-radius: 5px;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], textarea {
            width: calc(100% - 12px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background: #5ec726; 
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #4aae1c;
        }
    </style>
</head>
<body>
    
    <c:if test="${not empty course}">
        <form action="/edit/${course.id}" method="post">
            <div class="course-image-container">
                <img class="course-image" src="${course.imageUrl}" alt="Course Image">
            </div>
            <div class="course-details">
                <h2>Edit Course Details</h2>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${course.name}">
                <br>
                <label for="description">Description:</label>
                <textarea id="description" name="description">${course.description}</textarea>
                <br>
                <label for="duration">Duration:</label>
                <input type="text" id="duration" name="duration" value="${course.duration}">
                <br>
                <label for="price">Price:</label>
                <input type="text" id="price" name="price" value="${course.price}">
                <br>
                <input type="submit" value="Update">
            </div>
        </form>
    </c:if>
   
</body>
</html>
