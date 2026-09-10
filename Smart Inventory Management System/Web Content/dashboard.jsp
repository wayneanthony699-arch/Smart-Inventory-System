<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>Dashboard - Inventory System</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet">

<style>

/* ================= BODY ================= */

body {
    margin: 0;
    font-family: Arial, sans-serif;

    min-height: 100vh;

    background:
        radial-gradient(circle at 90% 20%,
        rgba(70, 100, 255, 0.12),
        transparent 25%),

        radial-gradient(circle at 10% 90%,
        rgba(120, 80, 255, 0.10),
        transparent 25%),

        linear-gradient(135deg, #f4f7ff, #eef2ff);
}


/* ================= TOP BAR ================= */

.topbar {

    height: 72px;

    background: linear-gradient(
        90deg,
        #2457e8,
        #6645e8
    );

    color: white;

    display: flex;

    align-items: center;

    justify-content: space-between;

    padding: 0 30px;

    box-shadow:
        0 4px 15px rgba(50,70,180,0.25);
}


.brand {

    font-size: 24px;

    font-weight: bold;
}


.admin {

    font-size: 16px;

    font-weight: 600;
}


/* ================= LAYOUT ================= */

.layout {

    display: flex;

    min-height:
        calc(100vh - 72px);
}


/* ================= SIDEBAR ================= */

.sidebar {

    width: 230px;

    background: linear-gradient(
        180deg,
        #315be8,
        #4c3ed2
    );

    padding-top: 25px;

    box-shadow:
        4px 0 15px rgba(60,70,180,0.15);
}


.sidebar a {

    display: block;

    padding: 15px 25px;

    margin: 4px 12px;

    border-radius: 10px;

    color: white;

    text-decoration: none;

    font-size: 16px;

    transition: 0.3s;
}


.sidebar a:hover {

    background:
        rgba(255,255,255,0.18);

    color: white;
}


.sidebar .active {

    background:
        rgba(255,255,255,0.22);

    color: white;

    font-weight: bold;
}


/* ================= MAIN ================= */

.main {

    flex: 1;

    padding: 35px;
}


/* ================= PAGE HEADER ================= */

.page-header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 30px;
}


.page-header h1 {

    color: #18235c;

    font-size: 32px;

    font-weight: bold;

    margin-bottom: 5px;
}


.page-header p {

    color: #69718f;

    margin: 0;
}


/* ================= STAT CARDS ================= */

.stat-card {

    background: white;

    border-radius: 16px;

    padding: 22px;

    box-shadow:
        0 8px 25px rgba(50,70,150,0.10);

    border: 1px solid #e2e7ff;

    transition: 0.3s;
}


.stat-card:hover {

    transform: translateY(-3px);

    box-shadow:
        0 12px 30px rgba(50,70,150,0.15);
}


.stat-icon {

    width: 55px;

    height: 55px;

    border-radius: 14px;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 27px;

    margin-bottom: 15px;
}


.icon-blue {

    background: #e8efff;
}


.icon-yellow {

    background: #fff5d9;
}


.icon-red {

    background: #ffe7eb;
}


.icon-purple {

    background: #eee9ff;
}


.stat-title {

    color: #69718f;

    font-size: 14px;

    font-weight: 600;
}


.stat-number {

    color: #18235c;

    font-size: 30px;

    font-weight: bold;

    margin: 4px 0;
}


.stat-description {

    color: #8a91aa;

    font-size: 13px;
}


/* ================= GENERAL CARD ================= */

.dashboard-card {

    background: white;

    border-radius: 16px;

    padding: 25px;

    box-shadow:
        0 8px 25px rgba(50,70,150,0.10);

    border: 1px solid #e2e7ff;
}


.card-title {

    color: #18235c;

    font-size: 20px;

    font-weight: bold;

    margin-bottom: 20px;
}


/* ================= QUICK ACTION ================= */

.quick-btn {

    display: flex;

    align-items: center;

    justify-content: space-between;

    width: 100%;

    padding: 16px 18px;

    margin-bottom: 12px;

    border-radius: 12px;

    background: #f4f6ff;

    border: 1px solid #e1e6ff;

    color: #18235c;

    text-decoration: none;

    font-weight: 600;

    transition: 0.3s;
}


.quick-btn:hover {

    background: #e8edff;

    color: #2457e8;

    transform: translateX(3px);
}


.quick-left {

    display: flex;

    align-items: center;

    gap: 12px;
}


.quick-icon {

    width: 38px;

    height: 38px;

    border-radius: 10px;

    background: #e1eaff;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 20px;
}


/* ================= TABLE ================= */

.table {

    margin-bottom: 0;
}


.table thead {

    background: #edf1ff;

    color: #18235c;
}


.table th {

    font-size: 14px;

    padding: 13px;
}


.table td {

    padding: 13px;

    vertical-align: middle;
}


/* ================= STATUS ================= */

.status {

    padding: 6px 12px;

    border-radius: 20px;

    font-size: 12px;

    font-weight: bold;
}


.in-stock {

    background: #dff7e8;

    color: #198754;
}


.low-stock {

    background: #fff0c9;

    color: #c47b00;
}


.out-stock {

    background: #ffe0e5;

    color: #dc3545;
}


/* ================= RESPONSIVE ================= */

@media(max-width: 768px) {

    .sidebar {

        width: 180px;
    }

    .main {

        padding: 20px;
    }

    .brand {

        font-size: 19px;
    }

}

</style>

</head>


<body>


<!-- ================= TOP BAR ================= -->

<div class="topbar">

    <div class="brand">
        📦 Inventory System
    </div>

    <div class="admin">
        👤 Admin
    </div>

</div>



<!-- ================= LAYOUT ================= -->

<div class="layout">


    <!-- ================= SIDEBAR ================= -->

    <div class="sidebar">

        <a href="dashboard.jsp" class="active">
            🏠 Dashboard
        </a>

        <a href="SearchProductServlet">
            📦 Products
        </a>

        <a href="addproduct.jsp">
            ➕ Add Product
        </a>

        <a href="SearchProductServlet">
            🔍 Search Product
        </a>

        <a href="category.jsp">
            🏷 Categories
        </a>

        <a href="#">
            📊 Reports
        </a>

        <a href="#">
            ⚙ Settings
        </a>

        <a href="loginform.jsp">
            🚪 Logout
        </a>

    </div>



    <!-- ================= MAIN CONTENT ================= -->

    <div class="main">


        <!-- PAGE HEADER -->

        <div class="page-header">

            <div>

                <h1>
                    Dashboard
                </h1>

                <p>
                    Welcome back, Admin! Here's your inventory overview.
                </p>

            </div>

            <div>

                <span class="badge bg-light text-primary p-3">
                    📅 Today
                </span>

            </div>

        </div>



        <!-- ================= STAT CARDS ================= -->

        <div class="row g-4">


            <!-- TOTAL PRODUCTS -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card">

                    <div class="stat-icon icon-blue">
                        📦
                    </div>

                    <div class="stat-title">
                        TOTAL PRODUCTS
                    </div>

                    <div class="stat-number">
                        120
                    </div>

                    <div class="stat-description">
                        Products in inventory
                    </div>

                </div>

            </div>



            <!-- LOW STOCK -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card">

                    <div class="stat-icon icon-yellow">
                        ⚠️
                    </div>

                    <div class="stat-title">
                        LOW STOCK
                    </div>

                    <div class="stat-number">
                        15
                    </div>

                    <div class="stat-description">
                        Products need restocking
                    </div>

                </div>

            </div>



            <!-- OUT OF STOCK -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card">

                    <div class="stat-icon icon-red">
                        ❌
                    </div>

                    <div class="stat-title">
                        OUT OF STOCK
                    </div>

                    <div class="stat-number">
                        5
                    </div>

                    <div class="stat-description">
                        Currently unavailable
                    </div>

                </div>

            </div>



            <!-- CATEGORIES -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card">

                    <div class="stat-icon icon-purple">
                        🏷️
                    </div>

                    <div class="stat-title">
                        CATEGORIES
                    </div>

                    <div class="stat-number">
                        8
                    </div>

                    <div class="stat-description">
                        Product categories
                    </div>

                </div>

            </div>

        </div>



        <!-- ================= MIDDLE SECTION ================= -->

        <div class="row g-4 mt-1">


            <!-- QUICK ACTIONS -->

            <div class="col-lg-5">

                <div class="dashboard-card">

                    <div class="card-title">
                        ⚡ Quick Actions
                    </div>


                    <a href="addproduct.jsp"
                       class="quick-btn">

                        <div class="quick-left">

                            <div class="quick-icon">
                                ➕
                            </div>

                            Add Product

                        </div>

                        <span>›</span>

                    </a>


                    <a href="SearchServlet"
                       class="quick-btn">

                        <div class="quick-left">

                            <div class="quick-icon">
                                🔍
                            </div>

                            Search Product

                        </div>

                        <span>›</span>

                    </a>


                    <a href="SearchProductServlet"
                       class="quick-btn">

                        <div class="quick-left">

                            <div class="quick-icon">
                                📦
                            </div>

                            View Products

                        </div>

                        <span>›</span>

                    </a>
                    <a href="category.jsp"
                       class="quick-btn">

                        <div class="quick-left">
                            <div class="quick-icon">
                                🏷️
                            </div>

                            Categories
                        </div>

                        <span>›</span>

                    </a>

                </div>

            </div>



            <!-- STOCK OVERVIEW -->

            <div class="col-lg-7">

                <div class="dashboard-card">

                    <div class="card-title">
                        📊 Stock Overview
                    </div>


                    <div class="mb-3">

                        <div class="d-flex justify-content-between">

                            <span>Electronics</span>

                            <span>70</span>

                        </div>

                        <div class="progress mt-2"
                             style="height:10px;">

                            <div class="progress-bar bg-primary"
                                 style="width:70%">
                            </div>

                        </div>

                    </div>


                    <div class="mb-3">

                        <div class="d-flex justify-content-between">

                            <span>Accessories</span>

                            <span>50</span>

                        </div>

                        <div class="progress mt-2"
                             style="height:10px;">

                            <div class="progress-bar bg-primary"
                                 style="width:50%">
                            </div>

                        </div>

                    </div>


                    <div class="mb-3">

                        <div class="d-flex justify-content-between">

                            <span>Stationery</span>

                            <span>40</span>

                        </div>

                        <div class="progress mt-2"
                             style="height:10px;">

                            <div class="progress-bar bg-primary"
                                 style="width:40%">
                            </div>

                        </div>

                    </div>


                    <div class="mb-3">

                        <div class="d-flex justify-content-between">

                            <span>Office Equipment</span>

                            <span>30</span>

                        </div>

                        <div class="progress mt-2"
                             style="height:10px;">

                            <div class="progress-bar bg-primary"
                                 style="width:30%">
                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>



        <!-- ================= RECENT PRODUCTS ================= -->

        <div class="dashboard-card mt-4">

            <div class="d-flex justify-content-between
                        align-items-center">

                <div class="card-title mb-0">
                    📦 Recent Products
                </div>

                <a href="SearchProductServlet"
                   class="text-primary text-decoration-none">

                    View All →

                </a>
            </div>

            <div class="table-responsive mt-4">
                <table class="table table-hover">

                    <thead>
                        <tr>
                            <th>ID</th>

                            <th>Product Name</th>

                            <th>Price</th>

                            <th>Quantity</th>

                            <th>Status</th>

                        </tr>

                    </thead>

                    <tbody>
                        <tr>

                            <td>1</td>

                            <td>Laptop Stand</td>

                            <td>45,000 MMK</td>

                            <td>15</td>

                            <td>

                                <span class="status in-stock">
                                    In Stock
                                </span>

                            </td>

                        </tr>

                        <tr>
                            <td>2</td>

                            <td>Wireless Headset</td>

                            <td>65,000 MMK</td>

                            <td>3</td>

                            <td>

                                <span class="status low-stock">
                                    Low Stock
                                </span>

                            </td>
                        </tr>
                        
                        <tr>

                            <td>3</td>

                            <td>USB Cable</td>

                            <td>8,000 MMK</td>

                            <td>0</td>

                            <td>

                                <span class="status out-stock">
                                    Out of Stock
                                </span>

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>