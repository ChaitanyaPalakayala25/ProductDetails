<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>EditPage</title>
</head>
<body class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<img src="data:image/jpeg;base64,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" width="70" height="70" class="d-inline-block align-top" alt="">  </a>
  <a class="navbar-brand" href="#"></a>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="addpage.jsp">Add Products</a>
      <a class="nav-item nav-link" href="listpage.jsp">List Products</a>
    </div>
  </div>
  <button class="btn btn-secondary my-2 my-sm-0" type="submit" style="margin: 20px;">Logout</button>
</nav>
<form class="row g-3" id="myForm">
  <div class="col-md-6">
    <label for="productID" class="form-label"><b>Product ID:</b></label>
    <input type="text" class="form-control" id="productID" name="productID">
  </div>
  <div class="col-md-6">
    <label for="productName" class="form-label"><b>Product Name:</b></label>
    <input type="text" class="form-control" id="productName" name="productName">
  </div>
  <div class="col-12">
    <label for="productType" class="form-label"><b>Product Type:</b></label>
    <select class="form-select" name="productType" style="width: 400px;" >
		<option selected>Select Product Type</option>
		<option>...</option>
		</select>
  </div>
  <div class="col-12">
    <label for="productDescription" class="form-label"><b>Product Description:</b></label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Describe about the Product" name="productDescription"></textarea>
  </div>
  <div class="col-md-6">
    <label for="productPrice" class="form-label"><b>Product Price</b></label>
    <input type="text" class="form-control" id="productPrice" name="productPrice">
  </div>
  <div class="col-md-4">
    <label for="inStockProducts" class="form-label"><b>In Stock</b></label>
    <select id="inStockProducts" class="form-select">
      <option selected>Choose...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Add</button>
     <input type="button" onclick="myFunction()" class="btn btn-primary"  value="Clear">
  </div>
</form>
</body>
<script>
function myFunction() {
  document.getElementById("myForm").reset();
}
</script>
</html>