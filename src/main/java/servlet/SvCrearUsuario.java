package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import logica.UsuarioDAO;
import logica.UsuarioVO;

@WebServlet(name = "SvCrearUsuario", urlPatterns = {"/SvCrearUsuario"})
public class SvCrearUsuario extends HttpServlet {

    UsuarioDAO usuarioDAO = new UsuarioDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        UsuarioVO usuarioNuevo = new UsuarioVO();

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        int numeroDoc = Integer.parseInt(request.getParameter("numeroDoc"));
        String correo = request.getParameter("correo");
        
        try {
            String fechaNac = request.getParameter("fechaNac");

            DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate fecha = LocalDate.parse(fechaNac, formato);

            Date sqlDate = Date.valueOf(fecha);
            usuarioNuevo.setFechaNacimiento(sqlDate);
        } catch (Exception e) {
            e.printStackTrace();
        }

        usuarioNuevo.setNombre(nombre);
        usuarioNuevo.setApellido(apellido);
        usuarioNuevo.setNumeroId(numeroDoc);
        usuarioNuevo.setCorreo(correo);

        try {
            usuarioDAO.CrearUsuario(usuarioNuevo);
        } catch (SQLException ex) {
            throw new RuntimeException("Error llamando Crear usuario", ex);
        }

        response.sendRedirect("PaginaPrincipal.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
