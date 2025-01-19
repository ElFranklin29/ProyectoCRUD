<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/components/navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>Eliminar</title>

        <style>
            .title {
                font-weight: 400;
                color: #1A1919;
                margin-bottom: 2.5rem;
                margin-top: 0.5rem;
            }

            .paragraph {
                font-size: 1.2rem; /* Ajuste de tamaño de fuente */
                line-height: 1.5;
                margin-bottom: 5px;
                margin-top:2rem;
                color: #1A1919;
                text-align: center;
            }

            .form-container {
                width: 60%; /* Ajusta el ancho del formulario */
                margin-left: auto;
                margin-right: auto;
            }

            .btn-custom {
                background-color: #AF71C7; /* Color verde personalizado */
                color: white;
                width: 150px; /* Ancho más grande */
                height: 50px; /* Altura más grande */
                border: none; /* Sin bordes */
                border-radius: 5px; /* Bordes redondeados */
                font-size: 1.2rem;
            }

            .btn-custom:hover {
                background-color: #6B417B; /* Color al pasar el cursor */
                color: white;
            }

            .btn-custom:active{
                background-color: #6B417B; /* Color de fondo personalizado */
                transform: scale(0.95); /* Efecto de "presionado" */
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Sombra más intensa */
            }

            .form-control {
                width: 100%; /* Hace que los inputs ocupen todo el ancho disponible */
                margin-bottom: 3rem; /* Espacio entre cada input */
            }

            /* Quitar la decoración de enlaces */
            .text-decoration-none {
                text-decoration: none;
            }

            .button-container {
                display: flex;
                justify-content: center; /* Centra los botones */
                gap: 10px; /* Añade un espacio mínimo entre los botones */
                margin-top: 20px;
                margin-bottom: 30px;
            }


        </style>

    </head>


    <body>
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
      
    </body>
</body>
</html>
