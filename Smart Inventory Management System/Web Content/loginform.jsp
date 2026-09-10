<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login | Inventory Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        min-height: 100vh;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #f5f3ff, #e0e7ff);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        width: 100%;
        max-width: 500px;
        padding: 20px;
    }

    .login-card {
        background: white;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.12);
    }

    .logo {
        width: 70px;
        height: 70px;
        margin: auto;
        margin-bottom: 15px;
        border-radius: 18px;
        background: #5b3cc4;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 35px;
    }

    .title {
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 5px;
        color: #212529;
    }

    .subtitle {
        text-align: center;
        color: #777;
        margin-bottom: 30px;
    }

    .form-label {
        font-weight: 600;
        margin-bottom: 7px;
    }

    .form-control {
        height: 50px;
        border-radius: 10px;
        padding-left: 15px;
        margin-bottom: 18px;
    }

    .form-control:focus {
        border-color: #5b3cc4;
        box-shadow: 0 0 0 0.2rem rgba(91,60,196,0.15);
    }

    .login-btn {
        width: 100%;
        height: 50px;
        border: none;
        border-radius: 10px;
        background: #5b3cc4;
        color: white;
        font-size: 18px;
        font-weight: bold;
        margin-top: 5px;
    }

    .login-btn:hover {
        background: #452c9c;
    }

    .error-box {
        margin-top: 20px;
        padding: 12px;
        border-radius: 10px;
        background: #ffe5e5;
        border: 1px solid #ffbaba;
        color: #c62828;
        text-align: center;
    }

</style>
</head>

<body>
<div class="login-container">
    <div class="login-card">
        <!-- Icon -->
        <div class="logo">
            📦
        </div>

        <!-- Title -->
        <h2 class="title">
            Inventory Management
        </h2>

        <p class="subtitle">
            Please login to continue
        </p>


        <!-- Login Form -->
        <form action="LoginServlet" method="post">

            <!-- Email -->
            <label class="form-label">
                Email
            </label>

            <input
                type="email"
                class="form-control"
                name="txtmail"
                id="txtmail"
                placeholder="Enter your email"
                required>


            <!-- Username -->
            <label class="form-label">Username</label>

            <input
                type="text"
                class="form-control"
                name="txtname"
                id="txtname"
                placeholder="Enter your username"
                required>


            <!-- Password -->
            <label class="form-label">
                Password
            </label>

            <input
                type="password"
                class="form-control"
                name="txtpass"
                id="txtpass"
                placeholder="Enter your password"
                required>


            <!-- Login Button -->
            <button type="submit" class="login-btn">
                Login
            </button>

        </form>
        <!-- Error Message -->
        <c:if test="${not empty error}">
            <div class="error-box">
                ⚠ ${error}
            </div>
        </c:if>

    </div>

</div>

</body>
</html>