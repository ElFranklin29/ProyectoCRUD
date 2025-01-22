<%@page import="logica.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/components/navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/CrearUsuarioStyle.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>Actualizar</title>

        <style>

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


        </style>
    </head>

    <body class="d-flex flex-column min-vh-100 body">
        <div class="container d-flex justify-content-center align-items-center text-center flex-grow-1">

            <%
                UsuarioVO usuarioByNumeroDoc = (UsuarioVO) request.getSession().getAttribute("usuarioByNumeroDoc");

            %> 

            <div class="form-container">
                <h1 class="title">Sistema de Gestión de Usuarios</h1>
                <h2>Actualizar usuario</h2>

                <form action="SvActualizarUsuario" method="POST">
                    <p class="paragraph">Nombre</p>
                    <input  name="nombre" value="<%=usuarioByNumeroDoc.getNombre()%>" class="form-control" type="text" placeholder="Nombre" aria-label="default input example" required>

                    <p class="paragraph">Apellido</p>
                    <input name="apellido" value="<%=usuarioByNumeroDoc.getApellido()%>"  class="form-control" type="text" placeholder="Apellido" aria-label="default input example" required>

                    <p class="paragraph">Número de documento</p>
                    <input name="numeroDoc" value="<%=usuarioByNumeroDoc.getNumeroId()%>" class="form-control" type="number" placeholder="Número de documento" aria-label="default input example" required>

                    <p class="paragraph">Correo</p>
                    <input name="correo" value="<%=usuarioByNumeroDoc.getCorreo()%>" class="form-control" type="email" placeholder="Correo" aria-label="default input example" required>

                    <p class="paragraph">Fecha de nacimiento</p>
                    <input name="fechaNac" value="<%=usuarioByNumeroDoc.getFechaNacimiento()%>" class="form-control" type="date" placeholder="Fecha de nacimiento" aria-label="Fecha de nacimiento" required>


                    <div class="button-container">
                        <button  onclick="mostrarAlerta()" type="submit" class="btn btn-custom">ACTUALIZAR</button>

                        <a href="PaginaPrincipal.jsp"  class="text-decoration-none">
                            <button type="button" class="btn btn-custom">VOLVER</button>
                        </a>
                    </div>
                </form>
            </div>

        </div>

        <script>
            const formulario = document.getElementById('form');
            formulario.addEventListener('submit', function (event) {
                alert('¡Usuario Actualizado Correctamente!');
            });
        </script>
        
        
        <%@include file="Footer.jsp" %>
    </body>

</html>
