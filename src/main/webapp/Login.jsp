<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
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

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-form {
            width: 40%; 
            margin: 25px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
             background-color: rgb(106, 227, 54);
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            margin-top: 20px; 
        }

        button:hover {
             background-color: #7fffd4;
        }

        .reg {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }

        .reg:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <%@include file="/Compt/NavBar.jsp" %>
    <div class="container">
        <h2>Login</h2>
        <div class="login-form"> <!-- Added a new class for the form container -->
            <form action="/Login" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <br><br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <br><br>
                <label for="role">Role:</label>
                <select id="role" name="role">
                    <option value="teacher">Teacher</option>
                    <option value="student">Student</option>
                </select>
                <br><br><br>
                <button type="submit">Login</button>
                <br>
                <a class="reg" href="Register.jsp">Sign Up ?</a>
            </form>
        </div>
    </div>
</body>
</html>
