<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="style/CrearUsuarioStyle.css" rel="stylesheet" type="text/css"/>
    </head>

    <body class="d-flex flex-column min-vh-100 body">
        <div class="container d-flex justify-content-center align-items-center text-center flex-grow-1">

            <div class="form-container">
                <h1 class="title">Sistema de Gestión de Usuarios</h1>
                <h2>Crear usuario</h2>


                <form id="form" action="SvCrearUsuario" method="POST">
                    <p class="paragraph">Nombre</p>
                    <input  name="nombre" class="form-control" type="text" placeholder="Nombre" aria-label="default input example" required>

                    <p class="paragraph">Apellido</p>
                    <input name="apellido"  class="form-control" type="text" placeholder="Apellido" aria-label="default input example" required>

                    <p class="paragraph">Número de documento</p>
                    <input name="numeroDoc" class="form-control" type="number" placeholder="Número de documento" aria-label="default input example" required>

                    <p class="paragraph">Correo</p>
                    <input name="correo" class="form-control" type="email" placeholder="Correo" aria-label="default input example" required>

                    <p class="paragraph">Fecha de nacimiento</p>
                    <input name="fechaNac" class="form-control" type="date" placeholder="Fecha de nacimiento" aria-label="Fecha de nacimiento" required>


                    <div class="button-container">
                        <button  onclick="mostrarAlerta()" type="submit" class="btn btn-custom">CREAR</button>

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
