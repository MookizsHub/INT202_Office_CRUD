<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 12/16/2023
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Classic Model Online</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        function testAjax() {
           //alert("Hello, This is a test ajax message");
            let xhr = new XMLHttpRequest();
            alert(xhr);
            xhr.onload = function(){
                if(xhr.status !== 200) {
                    alert('Error:' + xhr.status + ': ' + xhr.statusText);
                }
                else {
                    alert('Status : ' + xhr.status+ ' ->'+ xhr.response);
                }
            };
            xhr.open("GET","hello-servlet")
            xhr.send();
        }
        function loadProduct(page, pageSize=document.getElementById("itemsPage").value) {
            //alert('page: '+ page + ", size: "+ pageSize)
            const xhttp = new XMLHttpRequest();
             xhttp.onload = function() {
                 if(xhttp.status !== 200) {
                 document.getElementById("body-content").innerHTML = xhttp.responseText;
             } else{
                 alert('error: ' + xhttp.status)
                 }
             }
             xhttp.open("GET", "product-list?page="+page+"&pageSize="+pageSize); // send parameters to server
             xhttp.send();
        }
    </script>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid"><a class="navbar-brand text-warning" href="javascript:void(0)">Classic Model</a>
        <button class="navbar-toggle" type="button" data-bs-toggle="collapse"><span class="navbar-toggle-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="my-navbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item"><a class="nav-link" href="javascript:loadOffice('')">Office</a></li>
                <li class="nav-item"><a class="nav-link" href="javascript:loadProduct(1,15)">Product</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container" id="body-content">
    <h3>SIT-202: Classic Model Online</h3>
    <p>SIT-202 is a global online marketplace. <br>
    <p>SIT-202 is a young and dynamic company specialized in the online
        sale of static collectible models and related accessories. Our location are distributed around
        the world. <br> … they are popular collectibles for every automobile fan.rs! .. </p>
</div>
</body>
</html>
