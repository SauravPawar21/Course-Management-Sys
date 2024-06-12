<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Courses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1, h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            border-radius: 10px;
            box-shadow: 6px 5px 20px 4px rgba(0, 0, 0, 0.8);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #55b1a3;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button {
            background-color: #4199ab;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
        }

        button:hover {
            background-color: #5ec726;
        }

        button a {
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body>
<%@include file="/Compt/NavAddCourse.jsp" %>
    <h2>Manage Books <img alt="mangesetting" src="/img/video-tutorial_12571708.png" width="45px" height="45px"> </h2> 

    <div style="text-align: center; margin-bottom: 20px;">
        <form action="AddCourses.jsp">
            <button type="submit">Add Books</button>
        </form>
    </div>

    <table>
       
        <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Course Name</th>
            <th>Price</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>

        
        <c:forEach var="course" items="${CourseList}">  
            <tr>
                <td>${course.id}</td>
                <td><img src="${course.imageUrl}" alt="${course.courseName}" width="100" ></td>
                <td>${course.courseName}</td>
                <td>${course.price}</td>
                <td><button><a href="<c:url value='/delete/${course.id}'/>">Delete</a></button></td>
                <td><button><a href="${course.id}">Edit</a></button></td>
            </tr>
        </c:forEach>
    </table>
</body>

</html>
