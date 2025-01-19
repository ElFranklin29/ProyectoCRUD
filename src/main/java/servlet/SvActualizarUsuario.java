package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.UsuarioDAO;
import logica.UsuarioVO;

@WebServlet(name = "SvActualizarUsuario", urlPatterns = {"/SvActualizarUsuario"})
public class SvActualizarUsuario extends HttpServlet {

    UsuarioDAO usuarioDAO = new UsuarioDAO();
    int numeroDocActualizar;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int numeroDoc = Integer.parseInt(request.getParameter("numeroDoc"));

        UsuarioVO usuarioByNumeroDoc = new UsuarioVO();

        
        
        try {
            usuarioByNumeroDoc = usuarioDAO.TraerUsuarioByNumeroDoc(numeroDoc);
        } catch (SQLException ex) {
            Logger.getLogger(SvActualizarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        numeroDocActualizar = usuarioByNumeroDoc.getNumeroId();

        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("usuarioByNumeroDoc", usuarioByNumeroDoc);
        
       
  
        
        if (usuarioByNumeroDoc.getNombre() == null) {

            response.sendRedirect("AlertErrorActualizar.jsp");

        } else {
            response.sendRedirect("ActualizarUsuario.jsp");

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        UsuarioVO usuarioActualizar = new UsuarioVO();

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String numeroDoc = request.getParameter("numeroDoc");
        String correo = request.getParameter("correo");

        try {
            String fechaNac = request.getParameter("fechaNac");

            DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate fecha = LocalDate.parse(fechaNac, formato);

            Date sqlDate = Date.valueOf(fecha);
            usuarioActualizar.setFechaNacimiento(sqlDate);
        } catch (Exception e) {
            e.printStackTrace();
        }

        usuarioActualizar.setNombre(nombre);
        usuarioActualizar.setApellido(apellido);
        usuarioActualizar.setNumeroId(Integer.parseInt(numeroDoc));
        usuarioActualizar.setCorreo(correo);

        try {
            usuarioDAO.ActualizarUsuario(usuarioActualizar, numeroDocActualizar);
        } catch (SQLException ex) {
            Logger.getLogger(SvActualizarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("PaginaPrincipal.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
