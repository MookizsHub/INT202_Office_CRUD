<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .header-row {
            background-color: #007bff;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }

        form {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            color: #007bff;
            font-weight: bold;
        }

        input.form-control {
            border: 1px solid #007bff;
        }

        input[type="submit"],
        a.btn {
            background-color: #28a745;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover,
        a.btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row header-row">
        <h2>Insert Office</h2>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form method="post" action="insert-office">
                <div class="form-group">
                    <label for="officeCode">Office Code:</label>
                    <input type="text" class="form-control" id="officeCode" name="officeCode">
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" class="form-control" id="city" name="city">
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" name="phone">
                </div>
                <div class="form-group">
                    <label for="addressLine1">Address Line 1:</label>
                    <input type="text" class="form-control" id="addressLine1" name="addressLine1">
                </div>
                <div class="form-group">
                    <label for="country">Country:</label>
                    <input type="text" class="form-control" id="country" name="country">
                </div>
                <div class="form-group">
                    <label for="postalCode">Postal Code:</label>
                    <input type="text" class="form-control" id="postalCode" name="postalCode">
                </div>
                <div class="form-group">
                    <label for="territory">Territory:</label>
                    <input type="text" class="form-control" id="territory" name="territory">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn" value="Insert">
                    <a href="office-list" class="btn ml-2">Back</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
