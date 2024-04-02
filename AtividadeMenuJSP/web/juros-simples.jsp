<%-- 
    Document   : juros-simples
    Created on : 2 de abr. de 2024, 14:06:15
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
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%><br><br><br>        

        <h1>Calcule o Juros Simples</h1><br><br>
        <form action="" method="get">
            <label for="vlpresente">Valor Inicial(%):</label><br>
            <input type="number" step="0.01" name="p"  ><br>
            <label for="txjuros">Taxa de Juros(%):</label><br>
            <input type="number" step="0.01" name="j"  ><br>
            <label for="qtmeses">Quantidade de Meses:</label><br>
            <input type="number"  name="m" ><br><br>
            <input type="submit" value="Submit">
        </form> 
        

        <!-- Calculo -->
        <%
            double vlInicial, txJuros, qtMeses, juros; 
                    
            try{
                vlInicial = Double.valueOf(request.getParameter("p"));
                txJuros = Double.valueOf(request.getParameter("j"));
                qtMeses = Double.valueOf(request.getParameter("m"));
                juros = vlInicial + vlInicial *(txJuros/100) * qtMeses; 
                out.println("RECEBA: "+juros);
            }catch(NullPointerException e){
                out.print("");
            } 
                                                         
        %> 

    </body>
</html>
