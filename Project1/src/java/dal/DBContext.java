package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    public Connection getConnection() {
        Connection conn = null;
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Trading2024";
        String user = "sa";
        String password = "123";

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
}