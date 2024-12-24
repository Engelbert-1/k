package dal;

import model.Adminn;
import java.sql.*;

public class AdminnDAO {
    private DBContext dbContext;

    public AdminnDAO() {
        dbContext = new DBContext();
    }

    public Adminn getAdmin(String username, String password) {
        Adminn admin = null;
        try (Connection conn = dbContext.getConnection()) {
            String sql = "SELECT * FROM Admin WHERE Username=? AND Password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                admin = new Adminn();
                admin.setUsername(rs.getString("Username"));
                admin.setPassword(rs.getString("Password"));
                admin.setRole(rs.getInt("Role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }

    public void insert(Adminn admin) {
        try (Connection conn = dbContext.getConnection()) {
            String sql = "INSERT INTO Admin (Username, Password, Role) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, admin.getUsername());
            ps.setString(2, admin.getPassword());
            ps.setInt(3, admin.getRole());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}