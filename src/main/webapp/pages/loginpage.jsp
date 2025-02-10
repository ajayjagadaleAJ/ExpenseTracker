<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration From</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 60px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 70%;
            max-width: 600px;
        }
        h1 {
            font-size: 20px;
            color: #333;
        }
        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }
        label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: rgb(91, 91, 192);
            color: white;
            border: none;
            font-size: 16px;
        }
        a{
            text-decoration: underline;
        }
       
        @media (max-width: 600px) {
            .container {
                width: 90%;
                padding: 15px;
            }
            h1 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration From</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 60px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 70%;
            max-width: 600px;
        }
        h1 {
            font-size: 20px;
            color: #333;
        }
        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }
        label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 300px;
            padding: 10px;
            background-color: rgb(6, 129, 6);
            color: white;
            border: none;
            font-size: 16px;
        }
        a{
            text-decoration: underline;
        }
       
        @media (max-width: 600px) {
            .container {
                width: 90%;
                padding: 15px;
            }
            h1 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

    <form action="/checkdata" method="post">
        <div class="container">
            <div class="form-group">
               <strong><h1>Login Page</h1></strong> 
            </div>
             
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="description">Password:</label>
                    <input type="text" id="username" name="password" required>
                </div>
                <div class="form-group">
                <button type="submit">Login</button>
                
                </div>
                <a href="/">New User?Register here</a><br><br>
         
        </div>
 
    </form>
</body>
</html>
    
</body>
</html>