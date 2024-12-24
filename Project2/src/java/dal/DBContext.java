package dal;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    public Connection getConnection() {
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Trading2024"; // Địa chỉ SQL Server
            String username = "sa";  // Username SQL Server của bạn
            String password = "yourpassword";  // Mật khẩu SQL Server của bạn
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}