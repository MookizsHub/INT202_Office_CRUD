<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
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
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover,
        a.btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row header-row">
        <h2>Update Office</h2>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form method="post" action="office-update">
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="hidden" name="officeCode" value="${selected.officeCode}">
                    <input type="text" class="form-control" id="city" name="city" value="${selected.city}">
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="${selected.phone}">
                </div>
                <div class="form-group">
                    <label for="addressLine1">Address Line 1:</label>
                    <input type="text" class="form-control" id="addressLine1" name="addressLine1" value="${selected.addressLine1}">
                </div>
                <div class="form-group">
                    <label for="addressLine2">Address Line 2:</label>
                    <input type="text" class="form-control" id="addressLine2" name="addressLine2" value="${selected.addressLine2}">
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <input type="text" class="form-control" id="state" name="state" value="${selected.state}">
                </div>
                <div class="form-group">
                    <label for="country">Country:</label>
                    <input type="text" class="form-control" id="country" name="country" value="${selected.country}">
                </div>
                <div class="form-group">
                    <label for="postalCode">Postal Code:</label>
                    <input type="text" class="form-control" id="postalCode" name="postalCode" value="${selected.postalCode}">
                </div>
                <div class="form-group">
                    <label for="territory">Territory:</label>
                    <input type="text" class="form-control" id="territory" name="territory" value="${selected.territory}">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn" value="Update">
                    <a href="office-list" class="btn ml-2">Back</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
