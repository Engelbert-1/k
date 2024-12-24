package dal;

import model.Supplier;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SupplierDAO {
    private Connection connection;

    public SupplierDAO() {
        try {
            // Kết nối với cơ sở dữ liệu
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourdb", "username", "password");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Phương thức lấy danh sách nhà cung cấp
    public List<Supplier> getAllSuppliers() {
        List<Supplier> suppliers = new ArrayList<>();
        String query = "SELECT * FROM suppliers";
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                Supplier supplier = new Supplier(
                    rs.getString("code"),
                    rs.getString("name"),
                    rs.getDate("dob"),
                    rs.getString("gender"),
                    rs.getString("address")
                );
                suppliers.add(supplier);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return suppliers;
    }

    // Phương thức lọc theo tên
    public List<Supplier> filterByName(String name) {
        List<Supplier> suppliers = new ArrayList<>();
        String query = "SELECT * FROM suppliers WHERE name LIKE ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Supplier supplier = new Supplier(
                    rs.getString("code"),
                    rs.getString("name"),
                    rs.getDate("dob"),
                    rs.getString("gender"),
                    rs.getString("address")
                );
                suppliers.add(supplier);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return suppliers;
    }

    // Phương thức lọc theo năm sinh
    public List<Supplier> filterByYear(int year) {
        List<Supplier> suppliers = new ArrayList<>();
        String query = "SELECT * FROM suppliers WHERE YEAR(dob) = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, year);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Supplier supplier = new Supplier(
                    rs.getString("code"),
                    rs.getString("name"),
                    rs.getDate("dob"),
                    rs.getString("gender"),
                    rs.getString("address")
                );
                suppliers.add(supplier);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return suppliers;
    }

    // Phương thức xóa nhà cung cấp
    public void deleteSupplier(String code) {
        String query = "DELETE FROM suppliers WHERE code = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, code);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}