<%@ page import="sit.int202.classicmodel.entities.Office" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
        }

        h1 {
            color: #007bff;
            margin-top: 50px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            border: 1px solid #007bff;
            padding: 10px;
        }

        th {
            background-color: #007bff;
            color: #ffffff;
        }

        p {
            color: #dc3545;
            font-size: 18px;
            margin-top: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
            display: block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h1>Search Result</h1>
<% List<Office> offices = (List<Office>)request.getAttribute("offices"); %>
<% if (offices != null && !offices.isEmpty()) { %>
<table>
    <tr>
        <th>Office Code</th>
        <th>City</th>
        <th>Phone</th>
        <th>State</th>
        <th>Country</th>
        <th>Postal Code</th>
    </tr>
    <% for (Office office : offices) { %>
    <tr>
        <td><%= office.getOfficeCode() %></td>
        <td><%= office.getCity() %></td>
        <td><%= office.getPhone() %></td>
        <td><%= office.getState() %></td>
        <td><%= office.getCountry() %></td>
        <td><%= office.getPostalCode() %></td>
    </tr>
    <% } %>
</table>
<% } else { %>
<p>No offices found !!!</p>
<% } %>
<a href="office_list.jsp">Back</a>
</body>
</html>
