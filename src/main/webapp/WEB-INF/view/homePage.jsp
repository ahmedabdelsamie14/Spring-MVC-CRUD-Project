<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Products Data</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Show Details</th>
                <th scope="col">Add/Update</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${productsList}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>
                        <a href="<c:url value='/view/${item.id}' />" class="btn btn-primary btn-sm">View Details</a>
                    </td>
                    <td>
                        <a href="<c:url value='/update/${item.id}' />" class="btn btn-warning btn-sm">Update</a>
                    </td>
                    <td>
                        <a href="<c:url value='/delete/${item.id}' />" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="text-center">
        <a href="<c:url value='/add' />" class="btn btn-success">Add New Product</a>
    </div>
</div>
</body>
</html>