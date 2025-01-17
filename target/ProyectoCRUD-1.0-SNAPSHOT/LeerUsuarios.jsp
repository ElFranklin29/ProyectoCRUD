<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/components/navbar.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>Leer</title>

        <style>
            .title {
                font-weight: 400;
                color: #1A1919;

                margin-top: 5%;
            }

            .btn-custom {
                background-color: #AF71C7; /* Color verde personalizado */
                color: white;
                width: 150px; /* Ancho más grande */
                height: 50px; /* Altura más grande */
                border: none; /* Sin bordes */
                border-radius: 5px; /* Bordes redondeados */
                font-size: 1.2rem;
                margin-bottom: 2rem;
                margin-top: 1.5rem;

            }

            .btn-custom:hover {
                background-color: #AF71C7; /* Color al pasar el cursor */
                color: white;
            }

            .btn-custom:active{
                background-color: #AF71C7; /* Color de fondo personalizado */
            }


        </style>    

    </head>

    <body class="d-flex flex-column min-vh-100">


        <div class="container d-flex flex-column justify-content-center align-items-center text-center flex-grow-1">
            <h1 class="title">Sistema de Gestión de Usuarios</h1>

            <button  class="btn btn-custom">Leer</button>

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

                    <tr>
                        <th scope="row">1</th>
                        <td>Fraklin</td>
                        <td>Castañeda</td>
                        <td>103293785</td>
                        <td>franklin@gmail.com</td>
                        <td>25-08-2025</td>
                    </tr>



                </tbody>
            </table>

            <button  class="btn btn-custom">Volver</button>
        </div>
    </body>

</html> 
