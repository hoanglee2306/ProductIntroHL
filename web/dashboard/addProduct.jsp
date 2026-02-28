<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product - Dashboard</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body>
        <h1>Add New Product</h1>
        <form method="post" action="${pageContext.request.contextPath}/product?action=insert" enctype="multipart/form-data">
            <div>
                <label>Name:</label>
                <input type="text" name="name" required/>
            </div>
            <div>
                <label>Description:</label>
                <textarea name="description" rows="4" cols="40"></textarea>
            </div>
            <div>
                <label>Price:</label>
                <input type="number" name="price" step="0.01" min="0"/>
            </div>
            <div>
                <label>Quantity:</label>
                <input type="number" name="quantity" min="0"/>
            </div>
            <div>
                <label>Category:</label>
                <select name="categoryId">
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.id}">${category.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Image:</label>
                <input type="file" name="image" accept="image/*"/>
            </div>
            <div>
                <input type="submit" value="Save"/>
                <a href="${pageContext.request.contextPath}/product">Cancel</a>
            </div>
        </form>
    </body>
</html>
