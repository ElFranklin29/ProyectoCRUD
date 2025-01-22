package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.UsuarioDAO;
import logica.UsuarioVO;

@WebServlet(name = "SvEliminarUsuario", urlPatterns = {"/SvEliminarUsuario"})
public class SvEliminarUsuario extends HttpServlet {

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

        UsuarioVO usuarioEliminar = new UsuarioVO();
        int numeroDocEliminar = Integer.parseInt(request.getParameter("numeroDoc"));

        try {
            usuarioEliminar = usuarioDAO.TraerUsuarioByNumeroDoc(numeroDocEliminar);
        } catch (SQLException ex) {
            Logger.getLogger(SvActualizarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (usuarioEliminar.getNombre() == null) {
            response.sendRedirect("Alerts/AlertErrorActualizar.jsp");

        } else {
            try {
                usuarioDAO.EliminarUsuario(numeroDocEliminar);
                response.sendRedirect("Alerts/AlertUsuarioEliminado.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(SvEliminarUsuario.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
