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

<title>Add Product - Inventory System</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet">


<style>
/* ================= BODY ================= */
body {
    margin: 0;
    min-height: 100vh;
    font-family: Arial, sans-serif;

    background:
        radial-gradient(circle at 90% 20%,
        rgba(120, 90, 255, 0.18),
        transparent 25%),

        radial-gradient(circle at 10% 90%,
        rgba(80, 120, 255, 0.15),
        transparent 25%),

        linear-gradient(135deg, #f5f3ff, #eef2ff);
}
/* ================= TOP BAR ================= */
.topbar {
    height: 72px;

    background: linear-gradient(
        90deg,
        #3520a8,
        #6338e8
    );

    color: white;

    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 0 30px;

    box-shadow: 0 3px 15px rgba(0,0,0,0.15);
}

.brand {
    font-size: 24px;
    font-weight: bold;
}

.admin {
    font-size: 16px;
}
/* ================= LAYOUT ================= */

.layout {
    display: flex;
    min-height: calc(100vh - 72px);
}

/* ================= SIDEBAR ================= */
.sidebar {
    width: 220px;

    background: linear-gradient(
        180deg,
        #17164f,
        #28236e
    );
    padding-top: 25px;
}

.sidebar a {
    display: block;
    padding: 15px 25px;
    color: #ddd;
    text-decoration: none;
    font-size: 16px;
    transition: 0.3s;
}

.sidebar a:hover {
    background: linear-gradient(
        90deg,
        #5741d9,
        #6544e8
    );

    color: white;
}

.sidebar .active {
    background: linear-gradient(
        90deg,
        #5140d5,
        #6845e8
    );

    color: white;

    border-radius: 0 10px 10px 0;
}

/* ================= MAIN ================= */
.main {
    flex: 1;
    padding: 45px;
    position: relative;
}

/* Decorative circles */
.main::before {
    content: "";
    position: absolute;
    width: 250px;
    height: 250px;
    border-radius: 50%;
    background: rgba(110, 80, 240, 0.08);
    right: -80px;
    bottom: -80px;
    z-index: 0;
}
/* ================= FORM CARD ================= */

.form-card {
    max-width: 850px;
    margin: auto;
    background: rgba(255,255,255,0.95);
    border-radius: 20px;
    padding: 40px;
    box-shadow: 0 15px 40px rgba(50,40,120,0.15);
    position: relative;
    z-index: 1;
}
/* ================= HEADER ================= */
.form-header {
    text-align: center;
    margin-bottom: 35px;
}
.icon-box {
    width: 70px;
    height: 70px;
    margin: auto;
    margin-bottom: 15px;
    border-radius: 50%;
    background: #eeebff;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 35px;
}
.form-header h2 {
    font-weight: bold;
    color: #171743;
    margin-bottom: 5px;
}
.form-header p {
    color: #777;
    margin: 0;
}
/* ================= LABEL ================= */
.form-label {
    font-weight: 600;
    color: #202050;
}
/* ================= INPUT ================= */
.form-control,
.form-select {
    height: 50px;
    border-radius: 10px;
    border: 1px solid #d7d3f5;
    padding-left: 15px;
}
textarea.form-control {
    height: 120px;
    resize: vertical;
}
.form-control:focus,
.form-select:focus {
    border-color: #6544e8;
    box-shadow: 0 0 0 0.2rem rgba(101,68,232,0.15);
}
/* ================= BUTTON ================= */
.button-area {
    margin-top: 30px;
    padding-top: 25px;
    border-top: 1px solid #eee;
    display: flex;
    justify-content: flex-end;
    gap: 12px;
}
.btn-cancel {
    background: #eef0f7;
    color: #333;
    border: none;
    padding: 12px 25px;
    border-radius: 9px;
    text-decoration: none;
}
.btn-cancel:hover {
    background: #dfe2ec;
    color: #333;
}
.btn-add {
    background: linear-gradient(
        90deg,
        #5434db,
        #713de8
    );
    color: white;
    border: none;
    padding: 12px 28px;
    border-radius: 9px;
    font-weight: bold;
}
.btn-add:hover {
    background: linear-gradient(
        90deg,
        #4326bd,
        #5d2ed0
    );
    color: white;
}
/* ================= ERROR ================= */
.error-message {
    background: #fff0f0;
    color: #d63031;
    border: 1px solid #ffcaca;
    padding: 12px;
    border-radius: 8px;
    margin-bottom: 20px;
    text-align: center;
}
/* ================= RESPONSIVE ================= */
@media(max-width: 768px) {
    .sidebar {
        width: 170px;
    }
    .main {
        padding: 20px;
    }
    .form-card {
        padding: 25px;
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

    <a href="ProductList.jsp">
        📦 Products
    </a>

    <a href="addproduct.jsp" class="active">
        ➕ Add Product
    </a>

    <a href="SearchProductServlet">
        🔍 Search Product
    </a>

    <a href="#">
        🏷 Categories
    </a>

    <a href="#">
        📊 Reports
    </a>

    <a href="loginform.jsp">
        🚪 Logout
    </a>
</div>

<!-- ================= MAIN CONTENT ================= -->
<div class="main">
    <div class="form-card">
        <!-- HEADER -->

        <div class="form-header">
            <div class="icon-box">
                📦
            </div>

            <h2>
                Add New Product
            </h2>

            <p>
                Add a new product to your inventory
            </p>

        </div>

        <!-- ERROR MESSAGE -->

        <c:if test="${not empty error}">
            <div class="error-message">
                ⚠ ${error}
            </div>
        </c:if>
<!-- ================= FORM ================= -->
        <form
            action="InsertProductServlet"
            method="get">

            <!-- CATEGORY -->

            <div class="mb-4">

                <label class="form-label">
                    Category
                </label>

                <select
                    name="category_id" id="category_id"
                    class="form-select"
                    required>

                    <option value="1">
                        Electronics
                    </option>

                    <option value="2">
                        Computer Accessories
                    </option>

                    <option value="3">
                        Stationery
                    </option>

                    <option value="4">
                        Office Equipment
                    </option>

                    <option value="5">
                        Furniture
                    </option>

                </select>

            </div>



            <!-- PRODUCT NAME -->

            <div class="mb-4">

                <label class="form-label">
                    Product Name
                </label>

                <input
                    type="text"
                    name="product_name" id="product_name"
                    class="form-control"
                    placeholder="Enter product name"
                    required>

            </div>



            <!-- PRICE + QUANTITY -->

            <div class="row">

                <div class="col-md-6 mb-4">

                    <label class="form-label">
                        Price
                    </label>

                    <input
                        type="number"
                        name="price" id="price"
                        class="form-control"
                        placeholder="Enter price"
                        min="0"
                        step="0.01"
                        required>

                </div>


                <div class="col-md-6 mb-4">

                    <label class="form-label">
                        Quantity
                    </label>

                    <input
                        type="number"
                        name="quantity" id="quantity"
                        class="form-control"
                        placeholder="Enter quantity"
                        min="0"
                        required>

                </div>

            </div>
<!-- MIN STOCK -->
            <div class="mb-4">

                <label class="form-label">
                    Minimum Stock
                </label>

                <input
                    type="number"
                    name="min_stock" id="min_stock"
                    class="form-control"
                    placeholder="Enter minimum stock"
                    min="0"
                    required>

            </div>

<!-- DESCRIPTION -->

<div class="mb-4">

<label class="form-label">
      Description
</label>

 <textarea
     name="description" id="description"
     class="form-control"
     placeholder="Enter product description"></textarea>
</div>

<!-- BUTTONS -->
<div class="button-area">
<a
   href="product.jsp"
   class="btn-cancel">
	Cancel
</a>

<button
  type="submit"
  class="btn-add">
	 ➕ Add Product
</button>
</div>

</form>
</div>
</div>
</div>
</body>
</html>