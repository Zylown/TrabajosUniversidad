<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
        <title>JSP Page</title>
    </head>
    <body>
       <sql:setDataSource var="db" driver="org.mariadb.jdbc.Driver" url="jdbc:mariadb://localhost/demo"
        user="root" password=""/>
       
<div class="container mt-5">
<div class="row">
<div class="col-sm">
<sql:query dataSource="${db}" var="rs">
select * from area;
</sql:query>

<table class="table table-striped">
<tr>
<th>Codigo</th>
<th>Nombres</th>
</tr>
<c:forEach var="consulta" items="${rs.rows}">
<tr>
<td><c:out value="${consulta.id}"/></td>
<td><c:out value="${consulta. nombre}"/></td>
</tr>
</c:forEach>
</table>
</div>
</div>
</div>
    </body>
</html>
