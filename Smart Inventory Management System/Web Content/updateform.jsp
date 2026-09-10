<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Update Product</title>

<style>
/* ===== General ===== */
*{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, Helvetica, sans-serif;
    background: #f4f6f9;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px;
}

/* ===== Main Card ===== */
.update-card {
    width: 600px;
    background: #ffffff;
    padding: 35px 40px;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
}

/* ===== Header ===== */
.header {
    text-align: center;
    margin-bottom: 30px;
}
.header h2 {
    color: #222;
    font-size: 28px;
    margin-bottom: 8px;
}

.header p {
    color: #777;
    font-size: 14px;
}

/* ===== Form Group ===== */
.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;
    margin-bottom: 7px;
    font-size: 14px;
    font-weight: bold;
    color: #333;
}

/* ===== Inputs & Select ===== */
.form-group input,
.form-group select {
    width: 100%;
    padding: 12px 14px;
    border: 1px solid #d6d9de;
    border-radius: 8px;
    font-size: 14px;
    outline: none;
    background: #fff;
    transition: 0.2s;
}

.form-group input:focus,
.form-group select:focus {
    border-color: #4a6cf7;
    box-shadow: 0 0 0 3px rgba(74, 108, 247, 0.10);
}

/* ===== Two Columns ===== */
.row {
    display: flex;
    gap: 15px;
}

.row .form-group {
    flex: 1;
}

/* ===== Buttons ===== */
.button-area {
    display: flex;
    gap: 12px;
    margin-top: 25px;
}

.btn {
    flex: 1;
    padding: 13px;
    border: none;
    border-radius: 8px;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    transition: 0.2s;
}

/* Save Button */
.save-btn {
    background: #4a6cf7;
    color: white;
}

.save-btn:hover {
    background: #3657d6;
}

/* Cancel Button */
.cancel-btn {
    background: #e9ecef;
    color: #333;
}

.cancel-btn:hover {
    background: #d8dce1;
}

/* ===== Responsive ===== */
@media (max-width: 650px) {

    .update-card {
        width: 100%;
        padding: 25px;
    }

    .row {
        flex-direction: column;
        gap: 0;
    }
}
</style>
</head>
<body>

<div class="update-card">

<div class="header">
    <h2>Update Product</h2>
    <p>Update your product information</p>
</div>

<form action="UpdateProductServlet" method="post">

    <!-- Product ID -->
    <input type="hidden"
           name="product_id"
           value="${p1.getId()}">

    <!-- Category -->
    <div class="form-group">
        <label for="category_id">Category</label>

        <select id="category_id" name="category_id">

            <option value="1"
                ${p1.getCategoryId() == 1 ? 'selected' : ''}>
                Electronics
            </option>

            <option value="2"
                ${p1.getCategoryId() == 2 ? 'selected' : ''}>
                Computer Accessories
            </option>

            <option value="3"
                ${p1.getCategoryId() == 3 ? 'selected' : ''}>
                Stationery
            </option>

            <option value="4"
                ${p1.getCategoryId() == 4 ? 'selected' : ''}>
                Office Equipment
            </option>

            <option value="5"
                ${p1.getCategoryId() == 5 ? 'selected' : ''}>
                Furniture
            </option>

        </select>
    </div>

    <!-- Product Name -->
    <div class="form-group">
        <label for="product_name">Product Name</label>

        <input type="text"
               id="product_name"
               name="product_name"
               value="<c:out value='${p1.getProductName()}'/>"
               required>
    </div>

    <!-- Price & Quantity -->
    <div class="row">

        <div class="form-group">
            <label for="price">Price</label>

            <input type="number"
                   id="price"
                   name="price"
                   step="0.01"
                   value="<c:out value='${p1.getPrice()}'/>"
                   required>
        </div>

        <div class="form-group">
            <label for="quantity">Quantity</label>

            <input type="number"
                   id="quantity"
                   name="quantity"
                   value="<c:out value='${p1.getQuantity()}'/>"
                   required>
        </div>

    </div>

    <!-- Min Stock -->
    <div class="form-group">
        <label for="min_stock">Minimum Stock</label>

        <input type="number"
               id="min_stock"
               name="min_stock"
               value="<c:out value='${p1.getMinStock()}'/>"
               required>
    </div>

    <!-- Description -->
    <div class="form-group">
        <label for="description">Description</label>

        <input type="text"
               id="description"
               name="description"
               value="<c:out value='${p1.getDescription()}'/>">
    </div>

    <!-- Buttons -->
    <div class="button-area">

        <a href="ProductServlet" class="btn cancel-btn">
            Cancel
        </a>

        <button type="submit" class="btn save-btn">
            Save Changes
        </button>

    </div>

</form>

</div>

</body>
</html>
