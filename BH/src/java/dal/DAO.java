/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import model.Account;
import model.Category;
import model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 *
 */
public class DAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {

            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (SQLException e) {
        }
        return list;

    }


    public List<Product> getTop18() {
        List<Product> list = new ArrayList<>();
        String query = "select top 18 * from product";
        try {
            
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                                             
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getNext3Product(int amount) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "  FROM product\n"
                + " ORDER BY id\n"
                + "OFFSET ? ROWS\n"
                + " FETCH NEXT 3 ROWS ONLY";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where cateID = ?";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where [name] like ?";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "select * from product\n"
                + "where id = ?";
        try {              
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {

            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//
    public Product getLast() {
        String query = "select top 1 * from product\n"
                + "order by id desc";
        try {
           
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account login(String user, String pass) {
        String query = "select * from account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where [user] = ?\n";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass) {
        String query = "insert into account\n"
                + "values(?,?,0,0)";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String id) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String image, String price,
            String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[product] \n"
                + "([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price,
            String title, String description, String category, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            
            ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void editProduct(String name, String image, String price, String title, String description, int category, int id) {
        String sql = "update  product set\n"
                + "[name]=?,\n"
                + "[image]=?,\n"
                + "price=?,\n"
                + "title=?,\n"
                + "[description]=?,\n"
                + "cateID=?\n"
                + "where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, title);
            st.setString(5, description);
            st.setInt(6, category);
            st.setInt(7, id);
            st.executeUpdate();
            System.out.println("insert");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public List<Product> getTopSellingProducts() {
    List<Product> list = new ArrayList<>();
    String query = "SELECT TOP 5 * FROM product ORDER BY sales DESC"; // Giả sử bảng 'product' có cột 'sales' để đánh giá sản phẩm bán chạy
    try {
        ps = connection.prepareStatement(query);
        rs = ps.executeQuery();
        while (rs.next()) {
            list.add(new Product(rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getDouble(4),
                    rs.getString(5),
                    rs.getString(6)));
        }
    } catch (SQLException e) {
        System.out.println(e);
    }
    return list;
}
    
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
    
    public static void main(String[] args) {
    DAO dao = new DAO();
    List<Product> products = dao.getAllProduct();
    for (Product product : products) {
        System.out.println(product);
    }
}
}
