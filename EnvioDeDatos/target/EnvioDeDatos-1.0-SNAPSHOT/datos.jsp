<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h1>Formulario de Datos</h1>
        <form action="resultados.jsp" method="get" class="">
            Producto: <select name="selecProd" class="form-select">
                <option value="Televisor">Televisor</option>
                <option value="Radio">Radio</option>
                <option value="Cocina">Cocina</option>
            </select></br>
            Precio : <input type="text" class="form-control" name="txtPrecio"></br>
            Cantidad : <input type="text" class="form-control" name="txtCantidad"></br>
            <!-- <input type="submit" name="btn_enviar" class="btn btn-primary" value="Enviar Datos">-->
            <button type="submit" class="btn btn-primary mb-3" value="Enviar Datos">Enviar Datos</button>
        </form>
    </body>
</html>
