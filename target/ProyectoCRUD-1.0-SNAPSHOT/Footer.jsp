<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .custom-footer{
                background-color: #1A1919;
            }

            .para-footer{
                color: #787878;

            }

            /* Estilos para quitar estilos predeterminados de los enlaces */
            .no-style-link {
                text-decoration: none;
                color: inherit; /* Hereda el color del elemento padre */
            }
            .no-style-link:hover,
            .no-style-link:focus {
                text-decoration: none; /* Sin subrayado al pasar el mouse */
                color: inherit; /* Sin cambio de color al pasar el mouse */
            }

            .strong-items{
                color: #AF71C7;
            }
        </style>
    </head>
    <body>
        <footer class="custom-footer text-light py-4 mt-3">
            <div class="container">
                <!-- Lista dividida en dos filas y dos columnas -->
                <div class="row">
                    <div class="col-6 text-center mb-3 custom-col">

                        <p class="mb-0"><a target="_blank" href="https://www.figma.com/design/HuElvRvzsGPwJUvKRAGwag/Proyecto-CRUD?node-id=0-1&t=ADIDfqyQ6iROVSaX-1" class="no-style-link">Diseño en <strong class="strong-items">FIGMA</strong></a></p>

                    </div>
                    <div class="col-6 text-center mb-3 custom-col">

                        <p class="mb-0"><a target="_blank" href="https://github.com/ElFranklin29/ProyectoCRUD/tree/master" class="no-style-link" >Ver <strong class="strong-items">GITHUB</strong> </a></p>

                    </div>
                    <div class="col-6 text-center custom-col">

                        <p class="mb-0"> <a target="_blank"  href="https://worried-feeling-313.notion.site/Proyecto-1-1754da0a962b80158907c90691ea7cf4?pvs=4" class="no-style-link">Documentacion en <strong class="strong-items"> NOTION</strong> </a></p>

                    </div>
                    <div class="col-6 text-center custom-col">

                        <p class="mb-0"><a target="_blank" href="url" class="no-style-link">Ver <strong class="strong-items">PORTAFOLIO PERSONAL</strong>   </a></p>

                    </div>
                </div>
                <!-- Texto centrado debajo de la lista -->
                <div class="text-center mt-3">
                    <p class="para-footer mb-0">Hecho por Franklin Castañeda</p>
                </div>
            </div>
        </footer>
    </body>
</html>
