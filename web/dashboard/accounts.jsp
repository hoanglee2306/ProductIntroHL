<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounts - Dashboard</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body>
        <h1>Account Management</h1>
        <a href="${pageContext.request.contextPath}/account?action=add">Add New Account</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="account" items="${accounts}">
                <tr>
                    <td>${account.id}</td>
                    <td>${account.username}</td>
                    <td>${account.fullName}</td>
                    <td>${account.email}</td>
                    <td>${account.role}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/account?action=edit&id=${account.id}">Edit</a>
                        <a href="${pageContext.request.contextPath}/account?action=delete&id=${account.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
