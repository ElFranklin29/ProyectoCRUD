<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/navbar.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="style/PaginaPrincipalStyle.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body class="d-flex flex-column min-vh-100">
        
        <!-- Contenido principal -->
        <div class="container d-flex flex-column justify-content-center align-items-center text-center flex-grow-1">
            <h1 class="title">Sistema de Gestión de Usuarios</h1>
            <p class="paragraph">Aplicación web que permite realizar operaciones CRUD <br>(Crear, Leer, Actualizar, Eliminar)</p>
            <p class="paragraph-desc">Haz clic sobre cualquier botón para realizar una operación</p>

            <!-- Contenedor gris con botones -->
            <div class="button-container mt-4">
                <div class="row g-4">
                    <div class="col-6 d-flex justify-content-center">
                        <a href="CrearUsuario.jsp">
                        <button class="btn btn-custom">CREAR</button>
                        </a>
                    </div>
                    
                    <div class="col-6 d-flex justify-content-center">
                        <a href="LeerUsuarios.jsp">
                        <button class="btn btn-custom">LEER</button>
                        </a>
                    </div>
                    
                    <div class="col-6 d-flex justify-content-center">
                        <button class="btn btn-custom">ACTUALIZAR</button>
                    </div>
                    <div class="col-6 d-flex justify-content-center">
                        <button class="btn btn-custom">ELIMINAR</button>
                    </div>
                </div>
            </div>
        </div>
        
        
        
    </body>
</html>


