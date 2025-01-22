<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@page import="logica.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/components/navbar.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="style/LeerUsuario.css" rel="stylesheet" type="text/css"/>
        <title>Leer</title>

    </head>


    <body class="d-flex flex-column min-vh-100">


        <div class="container d-flex flex-column justify-content-center align-items-center text-center flex-grow-1">
            <h1 class="title">Sistema de Gestión de Usuarios</h1>

            <button  class="btn btn-custom">Leer</button>

            <%
                List<UsuarioVO> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");


            %>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Numero Documento</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Fecha Nacimiento</th>
                    </tr>
                </thead>
                <tbody>

                    <%                        int cont = 0;
                        for (UsuarioVO usuario : listaUsuarios) {
                            cont++;

                    %>
                    <tr>
                        <th scope="row"><%=cont%></th>
                        <td><%=usuario.getNombre()%></td>
                        <td><%=usuario.getApellido()%></td>
                        <td><%=String.valueOf(usuario.getNumeroId())%></td>
                        <td><%=usuario.getCorreo()%></td>
                        <td><%=usuario.getFechaNacimiento()%></td>
                    </tr>

                    <%}%>



                </tbody>
            </table>
            <a href="PaginaPrincipal.jsp">
                <button  class="btn btn-custom">Volver</button>

            </a>
        </div>

        <%@include file="Footer.jsp" %>
    </body>

</html> 
