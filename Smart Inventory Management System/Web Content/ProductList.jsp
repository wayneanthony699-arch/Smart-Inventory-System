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

<title>Product List - Inventory System</title>

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

    overflow-x: auto;
}


/* ================= PAGE HEADER ================= */

.page-header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 25px;
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


/* ================= ADD BUTTON ================= */

.btn-add {

    background: linear-gradient(
        90deg,
        #2457e8,
        #6645e8
    );

    color: white;

    border: none;

    padding: 11px 20px;

    border-radius: 9px;

    text-decoration: none;

    font-weight: 600;
}


.btn-add:hover {

    color: white;

    background: linear-gradient(
        90deg,
        #1945c5,
        #5533d0
    );
}


/* ================= TABLE CARD ================= */

.table-card {

    background: white;

    border-radius: 16px;

    padding: 25px;

    border: 1px solid #e2e7ff;

    box-shadow:
        0 8px 25px rgba(50,70,150,0.10);
}


/* ================= SEARCH ================= */

.search-box {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 20px;
}


.search-box h5 {

    color: #18235c;

    font-weight: bold;

    margin: 0;
}


.search-form {

    display: flex;

    gap: 8px;
}


.search-input {

    width: 250px;

    height: 42px;

    border: 1px solid #d7def5;

    border-radius: 8px;

    padding: 0 12px;

    outline: none;
}


.search-input:focus {

    border-color: #315be8;

    box-shadow:
        0 0 0 3px rgba(49,91,232,0.10);
}


.btn-search {

    height: 42px;

    padding: 0 18px;

    border: none;

    border-radius: 8px;

    background: #315be8;

    color: white;

    font-weight: 600;
}


.btn-search:hover {

    background: #2448c5;
}


/* ================= TABLE ================= */

.product-table {

    width: 100%;

    border-collapse: separate;

    border-spacing: 0;

    overflow: hidden;
}


.product-table thead {

    background:
        linear-gradient(
            90deg,
            #315be8,
            #6645e8
        );

    color: white;
}


.product-table th {

    padding: 15px 12px;

    font-size: 14px;

    white-space: nowrap;
}


.product-table td {

    padding: 14px 12px;

    vertical-align: middle;

    border-bottom: 1px solid #edf0fa;

    color: #3f4663;

    font-size: 14px;
}


.product-table tbody tr {

    transition: 0.2s;
}


.product-table tbody tr:hover {

    background: #f5f7ff;
}


/* ================= PRODUCT NAME ================= */

.product-name {

    font-weight: 600;

    color: #18235c;
}


/* ================= PRICE ================= */

.price {

    font-weight: bold;

    color: #315be8;
}


/* ================= STOCK ================= */

.stock {

    font-weight: 600;
}


/* ================= STATUS ================= */

.status {

    display: inline-block;

    padding: 6px 12px;

    border-radius: 20px;

    font-size: 12px;

    font-weight: bold;
}


.status-in {

    background: #dff7e8;

    color: #198754;
}


.status-low {

    background: #fff1cc;

    color: #c47b00;
}


.status-out {

    background: #ffe1e6;

    color: #dc3545;
}


/* ================= ACTION BUTTONS ================= */

.btn-update {

    background: #e7efff;

    color: #2457e8;

    border: none;

    padding: 7px 12px;

    border-radius: 7px;

    text-decoration: none;

    font-size: 12px;

    font-weight: 600;
}


.btn-update:hover {

    background: #d5e2ff;

    color: #1945c5;
}


.btn-delete {

    background: #ffe7eb;

    color: #dc3545;

    border: none;

    padding: 7px 12px;

    border-radius: 7px;

    text-decoration: none;

    font-size: 12px;

    font-weight: 600;
}


.btn-delete:hover {

    background: #ffd5dc;

    color: #bb2535;
}


/* ================= EMPTY ================= */

.empty-message {

    text-align: center;

    padding: 50px;

    color: #7b829c;

    font-size: 16px;
}


/* ================= RESPONSIVE ================= */

@media(max-width: 900px) {

    .sidebar {

        width: 190px;
    }

    .main {

        padding: 20px;
    }

    .page-header {

        flex-direction: column;

        align-items: flex-start;

        gap: 15px;
    }

    .search-box {

        flex-direction: column;

        align-items: flex-start;

        gap: 15px;
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

    <a href="SearchProductServlet" class="active">
        📦 Products
    </a>

    <a href="addproduct.jsp">
        ➕ Add Product
    </a>

    <a href="SearchServlet">
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



<!-- ================= MAIN ================= -->

<div class="main">


    <!-- PAGE HEADER -->

    <div class="page-header">

        <div>

            <h1>
                Product List
            </h1>

            <p>
                View and manage all products in your inventory.
            </p>

        </div>


        <a href="addproduct.jsp"
           class="btn-add">

            ➕ Add Product

        </a>

    </div>



    <!-- ================= TABLE CARD ================= -->

    <div class="table-card">


        <!-- SEARCH -->

        <div class="search-box">

            <h5>
                📦 All Products
            </h5>


            <form
                action="SearchServlet"
                method="get"
                class="search-form">

                <input
                    type="text"
                    name="search"
                    id="search"
                    class="search-input"
                    placeholder="Search product...">

                <button
                    type="submit"
                    class="btn-search">

                    🔍 Search

                </button>

            </form>

        </div>

        <!-- ================= TABLE ================= -->

        <div class="table-responsive">

            <table class="product-table">
                <thead>

                    <tr>

                        <th>ID</th>

                        <th>Category</th>

                        <th>Product Name</th>

                        <th>Price</th>

                        <th>Quantity</th>

                        <th>Min Stock</th>

                        <th>Description</th>

                        <th>Created At</th>

                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>
                    <c:forEach
                        var="p1"
                        items="${product}">
                        <tr>
                            <!-- ID -->
                            <td>

                                <c:out
                                    value="${p1.getId()}"/>

                            </td>


                            <!-- CATEGORY -->

                            <td>

                                <span class="badge bg-light text-primary">

                                    <c:out
                                        value="${p1.getCategoryId()}"/>

                                </span>

                            </td>


                            <!-- PRODUCT NAME -->

                            <td class="product-name">

                                <c:out
                                    value="${p1.getProductName()}"/>

                            </td>


                            <!-- PRICE -->

                            <td class="price">

                                <c:out
                                    value="${p1.getPrice()}"/> MMK

                            </td>


                            <!-- QUANTITY -->

                            <td class="stock">

                                <c:out
                                    value="${p1.getQuantity()}"/>

                            </td>


                            <!-- MIN STOCK -->

                            <td>

                                <c:out
                                    value="${p1.getMinStock()}"/>

                            </td>


                            <!-- DESCRIPTION -->

                            <td>

                                <c:out
                                    value="${p1.getDescription()}"/>

                            </td>


                            <!-- CREATED AT -->

                            <td>

                                <small>

                                    <c:out
                                        value="${p1.getCreatedAt()}"/>

                                </small>

                            </td>


                            <!-- ACTION -->

                            <td>

                                <div
                                    class="d-flex gap-2">


                                    <a
                                        href="SelectServlet?product_id=${p1.getId()}"
                                        class="btn-update">

                                        ✏ Update

                                    </a>


                                    <a
                                        href="DeleteServlet?id=${p1.getId()}"
                                        class="btn-delete">

                                        🗑 Delete

                                    </a>

                                </div>
                            </td>
                        </tr>

                    </c:forEach>

                    <!-- EMPTY -->

                    <c:if test="${empty product}">

                        <tr>

                            <td
                                colspan="9"
                                class="empty-message">

                                📦 No products found.
                            </td>
                        </tr>
                    </c:if>
                </tbody>

            </table>
        </div>
    </div>
</div>
</div>
</body>
</html>