<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - ProductIntroHL</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>
    <body>
        <h1>Login</h1>
        <form method="post" action="${pageContext.request.contextPath}/account">
            <div>
                <label>Username:</label>
                <input type="text" name="username" required/>
            </div>
            <div>
                <label>Password:</label>
                <input type="password" name="password" required/>
            </div>
            <div>
                <input type="submit" value="Login"/>
            </div>
            <c:if test="${not empty errorMsg}">
                <p style="color:red;">${errorMsg}</p>
            </c:if>
        </form>
    </body>
</html>
