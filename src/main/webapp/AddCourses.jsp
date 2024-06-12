<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Courses</title>
   <link rel="icon" href="/img/online-course_10180838.png" type="image/x-icon" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
             width: -60%; 
            margin: 10px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
        }

        .addCourses{
            width: 40%; 
            margin: 25px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #5ec726;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #3090b3;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="/Compt/NavBar.jsp" %>
    <div class="container">
        <div class="addCourses">
            <form action="addCourse" method="post" enctype="multipart/form-data">
                <h2>Add Course <img alt="course" src="/img/open-book_1388129.png" width="40px" height="40px"> </h2>
                <label for="courseName">Course Name:</label>
                <input type="text" id="courseName" name="courseName" required><br>

                <label for="price">Price:</label>
                <input type="number" id="price" name="price" step="0.01" required><br>

                <label for="imageUrl">Image URL:</label>
                <input type="text" id="imageUrl" name="imageUrl" placeholder="Enter image URL" required><br>

                <label for="courseDesc">Description :</label>
                <input type="text" id="courseDesc" name="courseDesc" placeholder="Enter Description" required><br>

                <button type="submit">Add Course</button>
            </form>
        </div>
    </div>
</body>
</html>
