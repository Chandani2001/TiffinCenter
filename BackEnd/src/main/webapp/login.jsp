<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"> 
    <!-- Custom CSS -->
    <style>
        body {
        
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(img/LoginPage.jpg);
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    padding: 0;
}
        
        .main {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        
        .main h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }
        
        .form-label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            text-align: left;
        }
        
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }
        
        .error-message {
            color: red;
            margin-top: 10px;
            text-align: left;
        }
        
        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .btn-primary:hover {
            background-color: #0056b3;
        }
        
        .mt-3 {
            margin-top: 20px;
        }
        
        .text-decoration-none {
            text-decoration: none;
        }
        
        .text-decoration-none:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="main">
    <h1>Login Here!!</h1>
    <form id="loginForm" action="login" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Username:</label>
            <input type="text" id="name" name="name" class="form-control">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
        <div class="mb-3">
            <!-- Error message container -->
            <div id="errorMessage" class="error-message"></div>
        </div>
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
    <p class="mt-3">Not registered? <a href="signup.jsp" class="text-decoration-none">Sign Up</a></p>
</div>
 
<!-- <!-- SweetAlert2 JS -->
<script>
    document.getElementById('loginForm').addEventListener('submit', function(event) {
        event.preventDefault();
 
        // Get username and password from the form
        const username = document.getElementById('name').value;
        const password = document.getElementById('password').value;
 
        // Check if both username and password are entered
        if (username.trim() === '' || password.trim() === '') {
            // Show in-page error message for missing credentials
            document.getElementById('errorMessage').innerText = 'Please enter both username and password!';
        } else {
            // Submit the form
            this.submit();
        }
    });
</script> -->
 
</body>
</html>
