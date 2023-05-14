<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <h1>Resultados de la venta</h1>
        <% 
            //Recepcion de datos
            String pro = request.getParameter("selecProd");
            double pre = Double.parseDouble(request.getParameter("txtPrecio"));
            int cant = Integer.parseInt(request.getParameter("txtCantidad"));
            //Calculos de los datos
            double subtotal = cant*pre;
            double igv = subtotal*0.18;
            double total = subtotal + igv;

        %>
        <!--la abreviatura de out.print(pro) es =pro -->
        Producto: <%=pro %></br>
        Precio: <%=pre %></br>
        Cantidad: <%=cant %></br>
        Subtotal: <%=subtotal %></br>
        Igv: <%=igv %></br>
        Total: <%=total %></br>
        <a href="datos.jsp">Volver Principal</a>
    </body>
</html>
