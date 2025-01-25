<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Product Details</h1>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">${product.name}</h5>
                    <p class="card-text">ID: ${product.id}</p>
                    <p class="card-text">Expiration Date: ${product.productDetails.expirationDate}</p>
                    <p class="card-text">Manufacturer: ${product.productDetails.manufacturer}</p>
                    <p class="card-text">Price: ${product.productDetails.price}</p>
                    <p class="card-text">Available: ${product.productDetails.available ? 'Yes' : 'No'}</p>
                    <div class="text-center">
                        <a href="<c:url value='/' />" class="btn btn-primary">Back to Products</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>