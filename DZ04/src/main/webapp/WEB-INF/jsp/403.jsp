<%-- 
    Document   : 403
    Created on : Dec 10, 2017, 8:00:03 PM
    Author     : Saryca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>You are not allowed to see this page</h1>
        <c:choose>
            <c:when test="${empty username}">
                <h2>Login</h2>
            </c:when>
            <c:otherwise>
                <h2>User ${username} <br/> you aren't allowed here!</h2>
                </c:otherwise>
            </c:choose>
    </body>
</html>
</html>
