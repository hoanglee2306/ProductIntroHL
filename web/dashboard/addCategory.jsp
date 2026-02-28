<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category - Dashboard</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body>
        <h1>Add New Category</h1>
        <form method="post" action="${pageContext.request.contextPath}/category?action=insert">
            <div>
                <label>Name:</label>
                <input type="text" name="name" required/>
            </div>
            <div>
                <label>Description:</label>
                <textarea name="description" rows="4" cols="40"></textarea>
            </div>
            <div>
                <input type="submit" value="Save"/>
                <a href="${pageContext.request.contextPath}/category">Cancel</a>
            </div>
        </form>
    </body>
</html>
