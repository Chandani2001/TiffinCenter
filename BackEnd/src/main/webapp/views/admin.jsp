<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
     body {
            padding-top: 80px; /* Adjust as needed */
        }
       
         .navbar {
    background-color: #00000008 !important;
    backdrop-filter: blur(10px);
    /* border-bottom: 1px solid rgba(0, 0, 0, 0.1); */
}
        .navbar-brand {
            font-weight: bold;
            font-style: italic; /* Make it italic */
            color:#0b0808 /* Change the text color */
        }
        .navbar-nav .nav-link {
            color:#222325 !important; /* Change the text color */
        }
        .navbar-toggler {
            border-color: #fff; /* Change the border color */
        }
        .btn-primary {
            background-color: #ffd100;
    border-color: brown;
        }
        .btn-primary:hover {
            background-color: brown; /* Change button background color to brown on hover */
        border-color: brown;
        }
        .bg-light {
            background-color: #f8f9fa !important;
        }</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">ADMIN PORTAL OF TiffinTime</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/MenuItems.html">Our Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
            </ul>
        </div>
        <div class="d-flex">
              <a href= "http://localhost:8080/Index.html" class="btn btn-primary border-0" type="button">Log Out</a>
            
            
        </div>
    </div>
</nav><h1 style="color: blue; font-family: Arial, sans-serif; text-align: center;">WELCOME TO ADMIN PORTAL</h1>

    <div class="container mt-5">
    
        <h3>Add Item</h3>
        <form id="addItemForm" action="/item/add" method="post">
            <div class="mb-3">
                <label for="itemName" class="form-label">Item Name</label>
                <input type="text" class="form-control" id="itemName" name="name" required>
            </div>
            <div class="mb-3">
                <label for="itemDescription" class="form-label">Item Description</label>
                <textarea class="form-control" id="itemDescription" name="description" rows="3"></textarea>
            </div>
            <div class="mb-3">
                <label for="itemDescription" class="form-label">Item Price</label>
                <textarea class="form-control" id="itemDescription" name="price" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary"onclick="alert('You have successfully add an item')">Add Item</button>
            <button type="submit" class="btn btn-warning"><a href="http://localhost:8080/MenuItems.html">Show All Added Items</a></button>
            <button type="submit" class="btn btn-warning"><a href="/Update.jsp">Update Item Details</a></button>
            <button type="submit" class="btn btn-warning"><a href="http://localhost:8082/views/Delete.jsp">Delete Item Details</a></button>
            
        </form>
    </div>
 
</body>
</html>
 