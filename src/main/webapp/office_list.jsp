<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OfficeLists</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            margin-top: 20px;
        }

        .header-row {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px;
            margin-bottom: 20px;
            text-align: center;
        }

        .search-form {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .search-input {
            width: 300px;
            padding: 10px;
            border: 1px solid #007bff;
            border-radius: 5px;
        }

        .search-btn {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .search-btn:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            background-color: #ffffff;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 15px;
            text-align: left;
        }

        table th {
            background-color: #007bff;
            color: #ffffff;
        }

        .action-links a {
            margin-right: 10px;
            text-decoration: none;
            border-radius: 5px;
            padding: 8px 15px;
        }

        .update-link {
            color: #ffffff;
            background-color: #ffc107;
        }

        .delete-link {
            color: #ffffff;
            background-color: #dc3545;
        }

        .insert-link {
            display: block;
            padding: 10px;
            background-color: #28a745;
            color: #ffffff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .insert-link:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row header-row">
        <h2>Classic Model Offices</h2>
    </div>

    <div class="row search-form">
        <form action="search-office" method="post">
            <input type="text" class="search-input" name="find" placeholder="Search">
            <button type="submit" class="search-btn">Find</button>
        </form>
    </div>

    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Office Code</th>
                <th>City</th>
                <th>Country</th>
                <th>Phone</th>
                <th>Postal Code</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${offices}" var="office">
                <tr>
                    <td>${office.officeCode}</td>
                    <td>${office.city}</td>
                    <td>${office.country}</td>
                    <td>${office.phone}</td>
                    <td>${office.postalCode}</td>
                    <td class="action-links">
                        <a href="office-update?officeCode=${office.officeCode}" class="update-link">Update</a>
                        <a href="office-delete?officeCode=${office.officeCode}" class="delete-link">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="row">
        <a class="insert-link" href="insert-office">Insert New Office</a>
    </div>
</div>

</body>
</html>
