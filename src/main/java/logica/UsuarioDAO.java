package logica;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import persistencia.ConexionJDBC;

public class UsuarioDAO {

    public void CrearUsuario(UsuarioVO usuario) throws SQLException {
        String query = "INSERT INTO usuarios(nombre, apellido, numerodoc, correo, fechaNacimiento) "
                + "VALUES (?,?,?,?,?) ";
        
        try(Connection conexion = ConexionJDBC.conectar(); PreparedStatement statement = conexion.prepareStatement(query)){
            
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getApellido());
            statement.setInt(3, usuario.getNumeroId());
            statement.setString(4, usuario.getCorreo());
            statement.setDate(5, usuario.getFechaNacimiento());
            
            statement.executeUpdate();
            System.out.println("Usuario creado exitosamente");
        }catch(SQLException e){
            System.out.println("Error al crear usuario" +e.getMessage());
        }
    }

}


