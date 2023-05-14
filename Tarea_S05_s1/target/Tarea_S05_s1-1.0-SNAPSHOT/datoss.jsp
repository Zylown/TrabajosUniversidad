<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Datos</title>
    </head>
    <body>
        <h1>Datos</h1>
        <form action="procesar.jsp" method="post">
            <label for="labelDias" class="form-label">Ingrese la cantidad de días</label>
            <input type="text" class="form-control" name="txtnumero_dias"></br>
            <button type="submit" name="btn_enviar" class="btn btn-primary mb-3" value="Enviar Datos">Enviar Datos</button>
        </form>
    </body>
</html>
