<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<h1>Update Product</h1>
<form:form action="/update" method="post" modelAttribute="product">
    <form:hidden path="id" />

    <div class="form-group">
        <label for="name">Product Name</label>
        <form:input path="name" class="form-control" />
        <form:errors path="name" cssClass="text-danger"/>
    </div>

    <div class="form-group">
        <label for="productDetails.expirationDate">Expiration Date</label>
        <form:input path="productDetails.expirationDate" class="form-control" type="date" />
        <form:errors path="productDetails.expirationDate" cssClass="text-danger"/>
    </div>

    <div class="form-group">
        <label for="productDetails.manufacturer">Manufacturer</label>
        <form:input path="productDetails.manufacturer" class="form-control" />
        <form:errors path="productDetails.manufacturer" cssClass="text-danger"/>
    </div>

    <div class="form-group">
        <label for="productDetails.price">Price</label>
        <form:input path="productDetails.price" class="form-control" type="number" step="0.01" />
        <form:errors path="productDetails.price" cssClass="text-danger"/>
    </div>

    <div class="form-group">
        <label for="productDetails.available">Available</label>
        <form:checkbox path="productDetails.available" class="form-check-input" />
    </div>

    <button type="submit" class="btn btn-primary">Update Product</button>
</form:form>
</body>
</html>