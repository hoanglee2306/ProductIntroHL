<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account - Dashboard</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body>
        <h1>Add New Account</h1>
        <form method="post" action="${pageContext.request.contextPath}/account?action=insert">
            <div>
                <label>Username:</label>
                <input type="text" name="username" required/>
            </div>
            <div>
                <label>Password:</label>
                <input type="password" name="password" required/>
            </div>
            <div>
                <label>Full Name:</label>
                <input type="text" name="fullName"/>
            </div>
            <div>
                <label>Email:</label>
                <input type="email" name="email"/>
            </div>
            <div>
                <label>Role:</label>
                <select name="role">
                    <option value="0">User</option>
                    <option value="1">Admin</option>
                </select>
            </div>
            <div>
                <input type="submit" value="Save"/>
                <a href="${pageContext.request.contextPath}/account">Cancel</a>
            </div>
        </form>
    </body>
</html>
