<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/components/navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="style/EliminarUsuario.css" rel="stylesheet" type="text/css"/>
        <title>Eliminar</title>

        <style>
            

        </style>

    </head>



    <body class="d-flex flex-column min-vh-100 body">
        <div class="container d-flex justify-content-center align-items-center text-center flex-grow-1">

            <div id="form" class="form-container">

                <form action="SvEliminarUsuario" method="POST">
                    <h1 class="title">Sistema de Gestión de Usuarios</h1>
                    <h2>Eliminar usuario</h2>

                    <p class="paragraph">Ingrese <strong>numero de documento </strong> del usuario registrado para eliminar: </p>
                    <input name="numeroDoc" class="form-control" type="number" placeholder="Número de documento" aria-label="default input example" required>

                    <div class="button-container">
                        <button  onclick="mostrarAlerta()" type="submit" class="btn btn-custom">ELIMINAR</button>

                        <a href="PaginaPrincipal.jsp"  class="text-decoration-none">
                            <button type="button" class="btn btn-custom">VOLVER</button>
                        </a>
                    </div>

                </form>

            </div>

        </div>
        <%@include file="Footer.jsp" %>
    </body>

</html>
