<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Procesar Datos</title>
    </head>
    <body>
        <c:if test="${not empty param.txtnumero_dias}">
            <c:set var="dias" value="${param.txtnumero_dias}"/>
            <c:set var="anios" value="${dias/365}"/>
            <c:set var="meses" value="${(dias * 0.0328549112)}"/>
            <c:set var="semanas" value="${dias / 7}"/>
        </c:if>
        <p>Años: <strong><c:out value="${anios}" /></strong></p>
        <p>Meses: <strong><c:out value="${meses}" /></strong></p>
        <p>Semanas: <strong><c:out value="${semanas}" /></strong></p>
        <p>Días: <strong><c:out value="${dias}" /></strong></p>
    </body>
</html>
