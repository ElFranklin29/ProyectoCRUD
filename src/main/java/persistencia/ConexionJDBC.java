package persistencia;

import java.sql.*;

public class ConexionJDBC {

    static String url = "jdbc:mysql://localhost:3306/proyectocrud";
    static String user = "root";
    static String pass = "franklin";

    static{
    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException("error loading SQL driver", ex);
        }
    }
  
    
    public static Connection conectar() throws SQLException {
        return DriverManager.getConnection(url, user, pass);
    }

}
