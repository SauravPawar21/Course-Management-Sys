<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
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
            margin: 2px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;

        }

        .registration-form {
            width:40%; 
            margin: 25px auto; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input, select {
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
    </style>
</head>
<body>
    <%@include file="/Compt/NavReg.jsp" %>  
    <div class="container">
        <h2>User Registration</h2>
        <div class="registration-form"> 
            <form action="/register" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <br><br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <br><br>
                 <label for="phone">Phone:</label>
       			 <input type="tel"  pattern="[0-9]{10}" id="phone" name="phone" required>
                <br><br>
                <label for="role">Role:</label>
                <select id="role" name="role">
                    <option value="teacher">Teacher</option>
                    <option value="student">Student</option>
                </select>
                <br><br>
                <button type="submit">Register</button><br><br>
                <p>Already have an account? <a href="Login.jsp">Login</a></p>
            </form>
        </div>
    </div>
</body>
</html>
