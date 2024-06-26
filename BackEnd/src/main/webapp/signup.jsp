<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-image: url("img/LoginPage.jpg");
        
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .main {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 25px;
    width: 600px;
    text-align: left;
    /* margin-left: -81px; */

            margin-left: 50px; /* Add margin to the left side */
        }

        .main h1 {
            color: #007bff;
            text-align: center; /* Center the heading */
        }

        .main h3 {
            color: #4b97e9;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .main form {
            display: flex;
            flex-direction: column;
        }

        .main form label {
            font-weight: bold;
            margin-top: 10px;
        }

        .main form input {
            width: calc(100% - 20px); /* Subtract padding from width */
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .main form button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .main form button:hover {
            background-color: #0056b3;
        }

        .main form p {
            margin-top: 20px;
            font-size: 14px;
        }

        .main form a {
            color: dodgerblue;
            text-decoration: none;
        }

        .main form a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: red;
            margin-top: 10px;
            text-align: left;
        }
        .cancelbtn {/* Red */
			width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #FF5C5C;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
}
 
.cancelbtn:hover {
  background-color: #FF3333; /* Darker Red */
}
 
.cancel {
  color: white;
  text-decoration: none;
}
    </style>
</head>
<body>
    <div class="main">
        <h1>Registration</h1>
        <h3 class="text-center">Please fill in this form to create an account</h3>
        <form action="/register" id="register" method="post">
            <label for="name">Name</label>
            <input type="text" placeholder="Enter your name" name="name" required>
       
            <label for="email">Email</label>
            <input type="email" placeholder="Enter your Email" name="email" required>

            <label for="mobile">Mobile</label>
            <input type="number" placeholder="Enter your Mobile" name="phoneNumber" required>

            <label for="address">Address</label>
            <input type="text" placeholder="Enter your Address" name="address" required>

            <label for="password">Password</label>
            <input type="password" placeholder="Enter your Password" name="password" required>

            <label>
                <input type="checkbox" checked="checked" name="remember">Remember me
            </label>

            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>


            <button type="submit" class="signupbtn" 
              onclick="alert('You have successfully created an account')">Sign Up</a></button>
        </form>
<button type="button" class="cancelbtn">
  <a class="cancel" href="http://localhost:8080/index.html">Cancel</a>    </div>
    
</body>
</html>
