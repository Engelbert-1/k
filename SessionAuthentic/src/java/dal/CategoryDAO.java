/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryDAO extends DBContext {

    //Doc tat ca cac ban ghi tu table Categories
    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Student";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("id"), rs.getString("name"),
                        rs.getString("dob"),rs.getString("gender"),rs.getString("address"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //Insert CategoriesDAO
    public void insert(Category c) {
    String sql = "INSERT INTO [dbo].[Student]\n"
            + "           ([ID], [name], [dob], [gender], [address])\n"
            + "     VALUES(?,?,?,?,?)";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        st.setInt(1, c.getId());
        st.setString(2, c.getName());
        st.setString(3, c.getDob());
        st.setString(4, c.getGender());
        st.setString(5, c.getAddress());
        st.executeUpdate();
    } catch (Exception e) {
        System.out.println(e);
    }
}

    //Find a category when have id
    public Category getCategoryById(int id) {

        String sql = "select * from Student where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category(rs.getInt("id"), rs.getString("name"),
                        rs.getString("dob"),rs.getString("gender"),rs.getString("address"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //delete a category
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Student]\n"
                + "      WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //update
    public void update(Category c) {
        String sql = "UPDATE [dbo].[Student]\n"
                + "   SET [name] = ?,\n"
                + "      [dob] = ?\n"
                + "      [gender] = ?\n"
                + "      [address] = ?\n"
                + " WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getDob());
            st.setString(2, c.getGender());
            st.setString(2, c.getAddress());
            
            
            st.setInt(3, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<Category> list = c.getAll();
        System.out.println(list.get(0).getName());
    }

    

}
