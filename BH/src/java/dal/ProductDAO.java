package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

public class ProductDAO {
    private Connection connection;

    public ProductDAO(Connection connection) {
        this.connection = connection;
    }

    // Lấy sản phẩm theo trang
    public List<Product> getProductsByPage(int page, int recordsPerPage) {
        List<Product> products = new ArrayList<>();
        int start = (page - 1) * recordsPerPage; // Tính vị trí bắt đầu

        String sql = "SELECT * FROM product ORDER BY id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, start);  // Vị trí bắt đầu
            ps.setInt(2, recordsPerPage);  // Số sản phẩm trên mỗi trang

            ResultSet rs = ps.executeQuery();

            // Lặp qua kết quả và thêm vào danh sách sản phẩm
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));                    // Lấy giá trị từ cột "id"
                product.setImage(rs.getString("image"));            // Lấy giá trị từ cột "image"
                product.setName(rs.getString("name"));              // Lấy giá trị từ cột "name"
                product.setPrice(rs.getDouble("price"));        // Lấy giá trị từ cột "price"
                product.setTitle(rs.getString("title"));            // Lấy giá trị từ cột "title"
                product.setDescription(rs.getString("description")); // Lấy giá trị từ cột "description"
                
                products.add(product);                               // Thêm sản phẩm vào danh sách
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    // Phương thức lấy tổng số sản phẩm trong cơ sở dữ liệu (để phân trang)
    public int getTotalProducts() {
        int total = 0;
        String sql = "SELECT COUNT(*) FROM product";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return total;
    }
}