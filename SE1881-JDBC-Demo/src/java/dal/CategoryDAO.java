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
import model.Admin;
import model.Department;
import model.Employee;

/**
 *
 * @author tphon
 */
public class CategoryDAO extends DBContext {

    public Admin checkAuthen(String username, String password) {
        String sql = "select * from admin where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return new Admin(username, password, rs.getInt("role"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // Read - select - List 
    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category temp = new Category();
                temp.setId(rs.getInt("id"));
                temp.setName(rs.getString("name"));
                temp.setDescribe(rs.getString("describe"));
                list.add(temp);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void delete(int id) {
        String sql = "delete from categories where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(Category c) {
        String sql = "insert into Categories values (?,?,?) ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getId());
            st.setString(2, c.getName());
            st.setString(3, c.getDescribe());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Category getCategoryByID(int id) {
        String sql = "select * from Categories where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category temp = new Category(rs.getInt("id"), rs.getString("name"), rs.getString("describe"));
                return temp;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void update(Category c) {
        String sql = "update Categories set name = ?, describe =? where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getDescribe());
            st.setInt(3, c.getId());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
//________________________________________________________________________________
    
    public List<Department> getDepts() {
        List<Department> list = new ArrayList<>();
        String sql = "select * from department";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Department(rs.getInt("id"), rs.getString("name")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // lay employee
    public List<Employee> getEmps() {
        List<Employee> list = new ArrayList<>();
        String sql = "select e.id,e.name,e.dob,e.gender,d.id as did,d.name as dname\n"
                + "   from Employee e inner join Department d on (d.id=e.did)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Department d = new Department(rs.getInt("did"), rs.getString("dname"));
                Employee e = new Employee(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getDate("dob"),
                        rs.getBoolean("gender"), d);

                list.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    //-----------------
        public List<Employee> search(int did, String name) {
        List<Employee> list = new ArrayList<>();
        String sql = "select e.id,e.name,e.dob,e.gender,d.id as did,d.name as dname\n"
                + "   from Employee e inner join Department d on (d.id=e.did) where 1=1";
       
                if (did>0){
                    sql+=" and did=" +did;
                }
                if (name!=null){
                    sql+= " AND e.name like '%"+name+"%'";
                }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, did);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Department d = new Department(rs.getInt("did"), rs.getString("dname"));
                Employee e = new Employee(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getDate("dob"),
                        rs.getBoolean("gender"), d);

                list.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
