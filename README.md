# 📦 Inventory Management System

A simple web-based **Inventory Management System** developed using Java Web Technologies.
This project is designed to manage products and categories efficiently while practicing Java Servlet, JSP, and MySQL database integration.

---

## ✨ Features

* 🔐 Admin Login
* 📊 Dashboard
* ➕ Add Product
* 📋 View Products
* ✏️ Update Product
* 🗑️ Delete Product
* 🔍 Search Product
* 📂 Category Management
* ⚠️ Minimum Stock Tracking
* 💰 Product Price Management
* 📝 Product Description
* 🕒 Product Creation Date

---

## 🛠️ Technologies Used

### Frontend

* HTML
* CSS
* Bootstrap 5

### Backend

* Java
* Java Servlet
* JSP (JavaServer Pages)
* JSTL

### Database

* MySQL

### Development Tools

* Eclipse IDE
* Apache Tomcat 9
* XAMPP

---

## 🗄️ Database

**Database Name:**

```text
inventory_db
```

### Main Tables

```text
products
categories
```

### Products Table

The `products` table contains information such as:

* Product ID
* Category ID
* Product Name
* Price
* Quantity
* Minimum Stock
* Description
* Created Date

---

## 📁 Project Structure

```text
Inventory
│
├── src
│   └── inventory
│       ├── DBConnection.java
│       ├── LoginServlet.java
│       ├── SearchProductServlet.java
│       ├── UpdateProductServlet.java
│       └── DeleteProductServlet.java
│
├── WebContent
│   ├── dashboard.jsp
│   ├── product.jsp
│   ├── ProductList.jsp
│   ├── addproduct.jsp
│   └── category.jsp
│
├── WebContent
│   └── WEB-INF
│       └── web.xml
│
└── README.md
```

---

## 🚀 How to Run the Project

### 1. Install Required Software

Make sure the following are installed:

* Java JDK
* Eclipse IDE
* Apache Tomcat 9
* XAMPP
* MySQL

### 2. Start XAMPP

Open XAMPP Control Panel and start:

```text
Apache
MySQL
```

### 3. Create the Database

Open **phpMyAdmin** and create:

```sql
CREATE DATABASE inventory_db;
```

Then create/import the required tables for the project.

### 4. Configure Database Connection

Open:

```text
DBConnection.java
```

Make sure the database connection matches your MySQL configuration.

Example:

```java
String URL = "jdbc:mysql://localhost:3306/inventory_db";
String USER = "root";
String PASS = "";
```

### 5. Configure Apache Tomcat

Add **Apache Tomcat 9** to Eclipse and configure the project to run on the Tomcat server.

### 6. Run the Project

Right-click the project in Eclipse and select:

```text
Run As → Run on Server
```

Select **Apache Tomcat 9** and start the application.

---

## 🔑 Login

The application uses an Admin Login system.

Enter the login credentials configured for your project.

> For security reasons, do not store real passwords or sensitive credentials in the GitHub repository.

---

## 🔄 CRUD Operations

The system supports the basic CRUD operations:

| Operation | Description                     |
| --------- | ------------------------------- |
| Create    | Add new products                |
| Read      | View product information        |
| Update    | Edit existing products          |
| Delete    | Remove products                 |
| Search    | Find products by search keyword |

---

## 🎯 Project Objectives

The main objectives of this project are:

* To understand Java Web Development
* To practice Java Servlet and JSP
* To connect Java applications with MySQL
* To implement CRUD operations
* To practice database management
* To understand the basic MVC-style separation between pages, servlets, and database operations
* To develop a practical Inventory Management System

---

## 📸 Screenshots

Screenshots of the application can be added here.

### Login Page

```text
Add your login screenshot here
```

### Dashboard

```text
Add your dashboard screenshot here
```

### Product Management

```text
Add your product management screenshot here
```

### Add Product

```text
Add your add-product screenshot here
```

### Category Management

```text
Add your category screenshot here
```

---

## 🔮 Future Improvements

Possible future improvements include:

* 📦 Stock In / Stock Out Management
* 📊 Inventory Reports
* 📈 Dashboard Statistics
* 🔔 Low Stock Notifications
* 👥 Multiple User Roles
* 📅 Advanced Date Filtering
* 📤 Export Reports
* 🔐 Improved Authentication and Security

---

## 📚 What I Learned

Through this project, I practiced:

* Java Programming
* Java Servlet
* JSP
* JSTL
* MySQL
* JDBC Database Connectivity
* SQL CRUD Operations
* HTML & CSS
* Bootstrap
* Apache Tomcat
* Basic Web Application Development

---

## 👨‍💻 Author

**Nora**

Java Web Development Student

---

## 📄 License

This project was created for **educational and learning purposes**.
