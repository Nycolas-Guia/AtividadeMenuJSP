<%-- 
    Document   : juros-compostos
    Created on : 2 de abr. de 2024, 14:06:43
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css"  href="menu.css" />
        
        <title>JSP Page</title>
    </head>
    <style>
        th, td {
         border:1px solid black;
        }
</style>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%><br><br><br>
        <h1>Juros Compostos</h1><br><br>
        <form action="" method="get">
            <label for="vlpresente">Valor Inicial(%):</label><br>
            <input type="number" step="0.01" name="p"  ><br>
            <label for="txjuros">Taxa de Juros(%):</label><br>
            <input type="number" step="0.01" name="j"  ><br>
            <label for="qtmeses">Quantidade de Meses:</label><br>
            <input type="number"  name="m" ><br><br>
            <input type="submit" value="Submit">
        </form> 
        <table >
            <tr>
              <th>MÊS</th>
              <th>VALOR ACUMULADO</th> 
            </tr>
            <tr>
              <td>1</td>
              <td>1500</td>
            </tr>  
        </table>
    </body>
</html>
