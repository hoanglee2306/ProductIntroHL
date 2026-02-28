<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products - Dashboard</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body>
        <h1>Product Management</h1>
        <a href="${pageContext.request.contextPath}/product?action=add">Add New Product</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.categoryId}</td>
                    <td>
                        <c:if test="${not empty product.image}">
                            <img src="${pageContext.request.contextPath}/image/${product.image}" width="60" alt="${product.name}"/>
                        </c:if>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/product?action=edit&id=${product.id}">Edit</a>
                        <a href="${pageContext.request.contextPath}/product?action=delete&id=${product.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
