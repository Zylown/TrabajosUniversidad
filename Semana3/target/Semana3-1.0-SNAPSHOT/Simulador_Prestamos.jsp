<%@ page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="style/style.css" rel="stylesheet" type="text/css">
  <title>Simulador de Prestamos</title>
</head>
<body>
  <center>
    <h1>Prestamos Personales</h1>
  </center>
  <%
    // Verificamos si se ha enviado el formulario
    if(request.getParameter("importe") != null && request.getParameter("tea") != null && request.getParameter("anios") != null) {
      // Obtenemos los valores ingresados por el usuario
      double importe = Double.parseDouble(request.getParameter("importe"));
      double tea = Double.parseDouble(request.getParameter("tea"));
      int años = Integer.parseInt(request.getParameter("anios"));

      // Calculamos la cuota mensual y el total de intereses
      double TME = tea / 12;
      int numeroCuotas = años * 12;
      double cuotaMensual = (importe * TME) / (1 - Math.pow(1 + TME, -numeroCuotas));
      double totalIntereses = (numeroCuotas * cuotaMensual) - importe;

      // Mostramos los resultados en el formulario
  %>
  <form>
    Importe<input name="importe" value="<%= importe %>"><br><br>
    T.E.A<input name="tea" value="<%= tea %>"><br><br>
    Años<input name="anios" value="<%= años %>"><br><br>
    Cuota Mensual<input name="cuota_mensual" value="<%= cuotaMensual %>"><br><br>
    Total Interes<input name="total_interes" value="<%= totalIntereses %>"><br><br>
    <br>

    <input class="calcular" type="submit" value="Calcular">
    <input class="borrar" type="reset" value="Borrar">
  </form>
  <%
    } else {
  %>
  <form>
    Importe<input name="importe"><br><br>
    T.E.A<input name="tea"><br><br>
    Años<input name="anios"><br><br>
    Cuota Mensual<input name="cuota_mensual"><br><br>
    Total Interes<input name="total_interes"><br><br>
    <br>

    <input class="calcular" type="submit" value="Calcular">
    <input class="borrar" type="reset" value="Borrar">
  </form>
  <%
    }
  %>
</body>
</html>