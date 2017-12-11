<%-- 
    Document   : admin
    Created on : Dec 10, 2017, 8:02:33 PM
    Author     : Saryca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
    <body>
        <h1>Hello, admin!</h1>
        <h1> ${message}</h1>
    <c:url value="/j_spring_security_logout" var="logoutUrl" />
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>
    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Username :
            ${pageContext.request.userPrincipal.name} | <a
                href="javascript:formSubmit()"> Logout</a>
        </h2>
    </c:if>
</body>
</html>
