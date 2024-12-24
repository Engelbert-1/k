package dal;

import model.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
    private DBContext dbContext;

    public AdminDAO() {
        dbContext = new DBContext();
    }

    public Admin getAdmin(String username, String password) {
        Admin admin = null;
        try {
            Connection conn = dbContext.getConnection();
            String sql = "SELECT * FROM Admin WHERE Username = ? AND Password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                admin = new Admin(rs.getString("Username"), rs.getString("Password"), rs.getInt("Role"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
}