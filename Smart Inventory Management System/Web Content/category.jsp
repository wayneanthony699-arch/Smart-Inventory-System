<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>Categories - Inventory System</title>

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

/* ================= HEADER ================= */

.page-header {
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

/* ================= CATEGORY CARD ================= */

.category-card {

    background: white;
    border-radius: 16px;
    padding: 25px;
    margin-bottom: 20px;
    border: 1px solid #e2e7ff;
    box-shadow:0 8px 25px rgba(50,70,150,0.10);
    transition: 0.3s;
}
.category-card:hover {

    transform: translateY(-3px);
    box-shadow:0 12px 30px rgba(50,70,150,0.15);
}

/* ================= CATEGORY ICON ================= */

.category-icon {
    width: 55px;
    height: 55px;
    border-radius: 14px;
    background: #e8efff;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 27px;
    margin-bottom: 15px;
}
.category-name {

    color: #18235c;
    font-size: 19px;
    font-weight: bold;
    margin-bottom: 5px;
}

.category-description {

    color: #777;
    font-size: 14px;
    margin-bottom: 15px;
}

/* ================= PRODUCT COUNT ================= */

.product-count {

    display: inline-block;
    padding: 6px 12px;
    background: #edf1ff;
    color: #315be8;
    border-radius: 20px;
    font-size: 13px;
    font-weight: bold;
}

/* ================= BUTTON ================= */

.btn-view {

    text-decoration: none;
    color: #315be8;
    font-weight: 600;
    font-size: 14px;
}


.btn-view:hover {

    color: #6645e8;
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

<div class="layout">

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <a href="dashboard.jsp">
        🏠 Dashboard
    </a>

    <a href="product.jsp">
        📦 Products
    </a>

    <a href="addproduct.jsp">
        ➕ Add Product
    </a>

    <a href="SearchProductServlet">
        🔍 Search Product
    </a>

    <a href="category.jsp" class="active">
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

        <h1>
            Categories
        </h1>

        <p>
            Manage and view your product categories
        </p>

    </div>

    <!-- ================= CATEGORY LIST ================= -->

    <div class="row g-4">


        <!-- CATEGORY 1 -->
        <div class="col-lg-4 col-md-6">

            <div class="category-card">
                <div class="category-icon">
                    💻
                </div>

                <div class="category-name">
                    Electronics
                </div>

                <div class="category-description">
                    Laptops, phones and electronic devices
                </div>

                <span class="product-count">
                    25 Products
                </span>

            </div>

        </div>

        <!-- CATEGORY 2 -->

        <div class="col-lg-4 col-md-6">

            <div class="category-card">

                <div class="category-icon">
                    🖱️
                </div>

                <div class="category-name">
                    Computer Accessories
                </div>

                <div class="category-description">
                    Mouse, keyboard, cables and accessories
                </div>

                <span class="product-count">
                    18 Products
                </span>

            </div>

        </div>

        <!-- CATEGORY 3 -->

        <div class="col-lg-4 col-md-6">

            <div class="category-card">

                <div class="category-icon">
                    📝
                </div>

                <div class="category-name">
                    Stationery
                </div>

                <div class="category-description">
                    Pens, notebooks and office stationery
                </div>

                <span class="product-count">
                    32 Products
                </span>

            </div>

        </div>

        <!-- CATEGORY 4 -->

        <div class="col-lg-4 col-md-6">

            <div class="category-card">

                <div class="category-icon">
                    🖨️
                </div>

                <div class="category-name">
                    Office Equipment
                </div>

                <div class="category-description">
                    Printers, scanners and office machines
                </div>

                <span class="product-count">
                    12 Products
                </span>

            </div>

        </div>

        <!-- CATEGORY 5 -->

        <div class="col-lg-4 col-md-6">

            <div class="category-card">

                <div class="category-icon">
                    🪑
                </div>

                <div class="category-name">
                    Furniture
                </div>

                <div class="category-description">
                    Desks, chairs and office furniture
                </div>

                <span class="product-count">
                    15 Products
                </span>

            </div>

        </div>

        <!-- CATEGORY 6 -->

        <div class="col-lg-4 col-md-6">

            <div class="category-card">

                <div class="category-icon">
                    🔌
                </div>

                <div class="category-name">
                    Accessories
                </div>

                <div class="category-description">
                    Chargers, adapters and other accessories
                </div>

                <span class="product-count">
                    20 Products
                </span>

            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>