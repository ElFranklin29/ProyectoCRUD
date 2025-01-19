package logica;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import persistencia.ConexionJDBC;

public class UsuarioDAO {

    public void CrearUsuario(UsuarioVO usuario) throws SQLException {
        String query = "INSERT INTO usuarios(nombre, apellido, numerodoc, correo, fechaNacimiento) "
                + "VALUES (?,?,?,?,?) ";

        try (Connection conexion = ConexionJDBC.conectar(); PreparedStatement statement = conexion.prepareStatement(query)) {

            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getApellido());
            statement.setInt(3, usuario.getNumeroId());
            statement.setString(4, usuario.getCorreo());
            statement.setDate(5, usuario.getFechaNacimiento());

            statement.executeUpdate();
            System.out.println("Usuario creado exitosamente");
        } catch (SQLException e) {
            System.out.println("Error al crear usuario" + e.getMessage());
        }
    }

    public List TraerUsuarios() {
        String query = "SELECT * FROM usuarios";
        List<UsuarioVO> listaUsuarios = new ArrayList();
        try (Connection conexion = ConexionJDBC.conectar(); PreparedStatement statement = conexion.prepareStatement(query)) {
            ResultSet set = statement.executeQuery();

            while (set.next()) {
                UsuarioVO usuario = new UsuarioVO();

                usuario.setNombre(set.getString("nombre"));
                usuario.setApellido(set.getString("apellido"));
                usuario.setNumeroId(set.getInt("numerodoc"));
                usuario.setCorreo(set.getString("correo"));
                usuario.setFechaNacimiento(set.getDate("fechaNacimiento"));

                listaUsuarios.add(usuario);
            }
        } catch (SQLException ex) {
            System.out.println("Error al leer usuarios " + ex.getMessage());

        }

        return listaUsuarios;
    }

    public UsuarioVO TraerUsuarioByNumeroDoc(int numeroDoc) throws SQLException {
        String query = "SELECT * FROM usuarios WHERE numerodoc = ?";
        UsuarioVO usuario = new UsuarioVO();

        System.out.println("numeroDoc a buscar: " + numeroDoc);
        try (Connection conexion = ConexionJDBC.conectar(); PreparedStatement statement = conexion.prepareStatement(query)) {

            statement.setInt(1, numeroDoc);
            ResultSet set = statement.executeQuery();

            while (set.next()) {
                usuario.setNombre(set.getString("nombre"));
                usuario.setApellido(set.getString("Apellido"));
                usuario.setNumeroId(set.getInt("numerodoc"));
                usuario.setCorreo(set.getString("correo"));
                usuario.setFechaNacimiento(set.getDate("fechaNacimiento"));
            }

        } catch (SQLException ex) {
            System.out.println("Error al trar usuario by numeroDoc" + ex.getMessage());
        }

        return usuario;
    }

    public void ActualizarUsuario(UsuarioVO usuario, int numeroDocActualizar) throws SQLException {
        String query = "UPDATE usuarios SET nombre=?, apellido=?, numerodoc=?, correo=?, "
                + "fechaNacimiento=? WHERE numerodoc=?";

        try (Connection conexion = ConexionJDBC.conectar(); PreparedStatement statement = conexion.prepareStatement(query)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getApellido());
            statement.setInt(3, usuario.getNumeroId());
            statement.setString(4, usuario.getCorreo());
            statement.setDate(5, usuario.getFechaNacimiento());

            statement.setInt(6, numeroDocActualizar);

            statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro al actualizar usuario" + ex.getMessage());
        }

    }

    public void EliminarUsuario(int numeroDoc) throws SQLException {
        String query = "DELETE FROM usuarios WHERE numerodoc = ?";

        try (Connection conexion = ConexionJDBC.conectar(); PreparedStatement statement = conexion.prepareCall(query)) {
            statement.setInt(1, numeroDoc);
            statement.executeUpdate();
            System.out.println("Usuario eliminado correctamente");

        }

    }

}
