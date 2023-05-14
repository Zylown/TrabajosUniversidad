<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.mycompany.semana7_s2.Area"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Lista Areas</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <table class="table table-striped">
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                        </tr>
                        <% 
                        ArrayList<Area> datos = (ArrayList<Area>)request.getAttribute("c");
                        pageContext.setAttribute("areas",datos);
                        %>
                        <c:forEach var="consulta" items="${areas}">
                            <tr>
                                <td width="15px"><c:out value="${consulta.id}"/></td>
                                <td width="250px"><c:out value="${consulta.nombre}"/></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
