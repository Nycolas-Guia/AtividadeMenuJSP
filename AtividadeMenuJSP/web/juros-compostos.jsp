<%-- 
    Document   : juros-compostos
    Created on : 2 de abr. de 2024, 14:06:43
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math"%>
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
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>Juros Compostos</h1><br><br>

        <form action="" method="get">            
            <input type="number" step="0.01" name="p" placeholder="Capital Inicial(%):"><br><br>            
            <input type="number" step="0.01" name="j" placeholder="Taxa de Juros(%):"><br><br>           
            <input type="number"  name="m" placeholder="Quantidade de Meses:"><br><br>            
            <input type="submit" value="Submit">
        </form> 

        <table>
            <%
                try{
                    double cap, jur, montante;
                    int meses;

                    cap = Double.valueOf(request.getParameter("p"));
                    jur = Double.valueOf(request.getParameter("j"));
                    meses = Integer.valueOf(request.getParameter("m"));
            %>
            <br>

            <table style="width:45%">
                <tr>
                    <th>Mês</th>
                    <th>Montante</th>
                </tr>

                <%
                    for (int i = 1; i < meses; i++){
                        montante = cap * Math.pow((1 + jur), meses);
                        out.println(<tr>);
                        out.println(<th>);
                    }
                
                    } catch(NullPointerException e){
                        out.println("");
                    }
            
                
                %>         
            </table>       
    </body>
</html>
