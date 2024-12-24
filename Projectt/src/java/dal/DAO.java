/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Product;
import model.Cart;
import model.Item;

public class DAO {
    Connection connection ;
    public String status = "";
    public DAO() {
        try {
            connection = new DBContext().getConnection();
            status = "Ket noi thanh cong";
        } catch (Exception e) {
            status = "Ket noi that bai " + e.getMessage();
        }
        System.out.println(status);
    }
     public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category_SE1881_HE186352";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt("id"), rs.getString("name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select p.id, p.name, p.image, p.price, p.description, c.id as cid, c.name, p.releasedate, p.rating from Category_SE1881_HE186352 c inner join Product_SE1881_HE186352 p on c.id = p.cid";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(6), rs.getString(7));
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getString(8), rs.getFloat(9), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getAllProductByCategoryID(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = "select p.id, p.name, p.image, p.price, p.description, c.id as cid, c.name, p.releasedate, p.rating from Category_SE1881_HE186352 c inner join Product_SE1881_HE186352 p on c.id = p.cid  where c.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(6), rs.getString(7));
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getString(8), rs.getFloat(9), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByProductID(String pid) {
        String sql = "select p.id, p.name, p.image, p.price, p.description, c.id as cid, c.name, p.releasedate, p.rating from Category_SE1881_HE186352 c inner join Product_SE1881_HE186352 p on c.id = p.cid where p.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(6), rs.getString(7));
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getString(8), rs.getFloat(9), c);
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductBySearchName(String search) {
        List<Product> list = new ArrayList<>();
        String sql = "select p.id, p.name, p.image, p.price, p.description, c.id as cid, c.name, p.releasedate, p.rating from Category_SE1881_HE186352 c inner join Product_SE1881_HE186352 p on c.id = p.cid where p.name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + search + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(6), rs.getString(7));
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getString(8), rs.getFloat(9), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "select * from Account_SE1881_HE186352 where [user] = ? and pass = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getString(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account checkUserExist(String user) {
        String sql = "select * from Account_SE1881_HE186352 where [user] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getString(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public Account checkUser(String user,String email) {
        String sql = "select * from Account_SE1881_HE186352 where [user] = ? and [email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getString(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public void signup(String user, String pass,String email) {
        String sql = "insert into Account_SE1881_HE186352 values(?, ?, 0,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.setString(3, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(String pid) {
        String sql = "delete from Product_SE1881_HE186352 where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(String name, String image, float price, String description, int cid, String releasedate, float rating) {
        String sql = "insert into Product_SE1881_HE186352 values(?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setFloat(3, price);
            st.setString(4, description);
            st.setInt(5, cid);
            st.setString(6, releasedate);
            st.setFloat(7, rating);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(String name, String image, float price, String description, int cid, String releasedate, float rating, String id) {
        String sql = "update Product_SE1881_HE186352 set name = ?, image = ?, price = ?, description = ?, cid = ?, releasedate = ?, rating = ? where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setFloat(3, price);
            st.setString(4, description);
            st.setInt(5, cid);
            st.setString(6, releasedate);
            st.setFloat(7, rating);
            st.setString(8, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> getAllProductByPage(List<Product> list, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void addOrder(Account a, Cart c) {
        String sql = "insert into Order_SE1881_HE186352 values (?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, a.getId());
            st.setDouble(2, c.getTotalMoney());
            st.executeUpdate();
            // lay ra id cua order vua add
            String sql1 = "select top 1 id from Order order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add vao bang Orderdetail
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : c.getItems()) {
                    String sql2 = "insert into OrderDetail values (?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<Account> getAllAccountNotAdmin(){
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account_SE1881_HE186352 where id not like 1";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt("id"), rs.getString("user"), rs.getString("pass"), rs.getInt("admin"),rs.getString("email")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void remove(String uid) {
        String sql = "delete from Account_SE1881_HE186352 where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, uid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<Account> getAllAccountByPage(List<Account> list, int start, int end) {
        ArrayList<Account> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    public void updateAcc(int id , String user, String pass, String email){
        String sql = "UPDATE Account_SE1881_HE186352 SET [user] = ? , pass = ?, email = ? WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.setString(3, email);
            st.setInt(4, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void updateAccNoPass(int id , String user, String email){
        String sql = "UPDATE Account_SE1881_HE186352 SET [user] = ? , email = ? WHERE id = ?";
        try {
            System.out.println("///");
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, email);
            st.setInt(3, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }       
}
class test {

    public static void main(String[] args) throws Exception {
//DebtorDAOImpl d = new DebtorDAOImpl();
//d.updateDebtor("katori", "mat tich", "0123456789", "ducanhql8a3", 1, 1);
//            System.out.println(d.getDebtorById(1));
        DBContext d = new DBContext();
        System.out.println(d.getConnection());
        
    }
}
