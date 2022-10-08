<%-- 
    Document   : index
    Created on : 27 sept. 2022, 20:13:19
    Author     : juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen</title>
    </head>
    <body>
    <center> 
        <h1>PRIMER PARCIAL TEM-742 </h1>
        <h2>Nombre.- Juan Nestor Machicado Chaiña </h2>
        <h2 aling="center">Carnet.- 5980983</h2>

        <h1>REGISTRO DE CALIFICACIONES  </h1>
        <div>
            <form action="MainServlet" method="POST">


                <div aling="center"> materia 
                    <select name="materia">
                        <option value="TECNOLOGIA EMERGENTES">TECNOLOGIA EMERGENTES</option>
                        <option value="SIG"> SIG</option>
                        <option value="ROBOTICA">ROBOTICA</option>
                        <option value="REDES">REDES</option>
                    </select>
                </div>
                <br>
                <div   aling="center"> <label>Nombre del Estudiante </label>  
                    <input type="text" name="nombre" value="" />
                </div>
                <br>
                <div  aling="center"> <label>Primer parcial (sobre 30 pts) </label>
                    <input type="text" name="nt1" value="" />
                </div>
                <br>
                <div  aling="center"> <label>Segundo parcial (sobre 30 pts) </label>
                    <input type="text" name="nt2" value="" />
                </div>
                <br>
                <div  aling="center"> <label>Examen Final (sobre 40 pts) </label>
                    <input type="text" name="nt3" value="" />
                </div>
                <br>
                <input type="submit" value="Enviar" />
            </form>



        </div>

    </center>

</body>
</html>
