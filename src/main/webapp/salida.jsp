<%-- 
    Document   : salida
    Created on : 27 sept. 2022, 20:13:44
    Author     : juan machicado
--%>
<%@page import="com.emergentes.Calificaciones"%>
<%
    Calificaciones cal = (Calificaciones) request.getAttribute("calf");
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXAMEN</title>
    </head>
    <body>
    <center>
    <h1>DATOS RECIBIDOS </h1>
        <div   aling="center"> <label>Nombre del Estudiante </label>  
            <%= cal.getNombre()    %>
        </div>
        <br>
        <div   aling="center"> <label>Materia </label>  
            <%=  cal.getMateria()  %>
        </div>
        <br>
        <div   aling="center"> <label>Primer Parcial</label>  
            <%= cal.getNt1()  %>
        </div>
        <br>
        <div   aling="center"> <label>Segundo Parcial </label>  
            <%= cal.getNt2()  %>
        </div>
        <br>
        <div   aling="center"> <label>Examen Final </label>  
            <%= cal.getNt3()  %>
        </div>
        <br>
        <div   aling="center"> <label>TOTAL </label>  
            <%= cal.getNf()       %>
        </div>
        <br>
        <div   aling="center"> <label>RESULTADO </label>  
             <%= cal.getEst()  %>
        </div>
        <br>
        
        <a href="index.jsp">volver</a>

</center>


    






</body>
</html>
