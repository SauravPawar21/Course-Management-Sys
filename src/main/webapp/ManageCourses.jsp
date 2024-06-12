<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Courses</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>
<body>
    <h2>Manage Courses</h2> 

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image URL</th>
        </tr>
        <c:forEach var="course" items="${CourseList}">
            <tr>
                <td>${course.id}</td>
                <td>${course.courseName}</td>
                <td>${course.courseDesc}</td>
                <td>${course.price}</td>
                <td>${course.imageUrl}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
