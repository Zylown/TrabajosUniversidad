<%-- 
    Document   : validar
    Created on : 14 abr. 2023, 13:34:30
    Author     : Unknown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String user = request.getParameter("username");
String pwd = request.getParameter("password");
String redirectURL = "http://localhost:8080/Semana3/menu.jsp?user="+user;
String redirectError = "http://localhost:8080/Semana3/Login.jsp";
if(user != null && user.equals("UTP") && pwd.equals("123")){
response.sendRedirect(redirectURL);
}
else{
response.sendRedirect(redirectError);
}
%>
    </body>
</html>
