<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Desarrollo Web Integrado</title>
<link href="formatos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>Bienvenido, <%= request.getParameter("user")%></h1>
<hr>
<ul>
    <li><a href="Simulador_Prestamos.jsp">Simulador de prestamos</a></li>
<li>Calcular las equivalencias de masa</li>
<li>Calcular la gratificaci&oacute;n</li>
</ul>
</body>
</html>

