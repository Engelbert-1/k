package dal;

import java.util.ArrayList;
import java.util.List;
import model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Admin;
import java.sql.Date;

/**
 *
 * @author tphon
 */
public class DAO extends DBContext {
    // Check authentication
    public Admin checkAuthen(String username, String password) {
        String sql = "select * from admin where username =? and password =?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
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

    // Get all students from the Student table
    public List<Student> getAll() {
        List<Student> list = new ArrayList<>();
        String sql = "SELECT * FROM Student";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getString("ID"));
                student.setName(rs.getString("Name"));
                student.setDob(rs.getDate("DOB"));
                student.setGender(rs.getBoolean("Gender"));
                student.setAddress(rs.getString("Address"));
                list.add(student);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // Delete a student by ID
    public void delete(String id) {
        String sql = "DELETE FROM Student WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // Insert a new student into the Student table
    public void insert(Student student) {
        String sql = "INSERT INTO Student (ID, Name, DOB, Gender, Address) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, student.getId());
            st.setString(2, student.getName());
            st.setDate(3, new Date(student.getDob().getTime())); // converting java.util.Date to java.sql.Date
            st.setBoolean(4, student.isGender());
            st.setString(5, student.getAddress());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // Get a student by ID
    public Student getStudentByID(String id) {
        String sql = "SELECT * FROM Student WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Student student = new Student();
                student.setId(rs.getString("ID"));
                student.setName(rs.getString("Name"));
                student.setDob(rs.getDate("DOB"));
                student.setGender(rs.getBoolean("Gender"));
                student.setAddress(rs.getString("Address"));
                return student;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // Update student information
    public void update(Student student) {
        String sql = "UPDATE Student SET Name = ?, DOB = ?, Gender = ?, Address = ? WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, student.getName());
            st.setDate(2, new Date(student.getDob().getTime()));
            st.setBoolean(3, student.isGender());
            st.setString(4, student.getAddress());
            st.setString(5, student.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // Main method for testing (optional, for debugging purposes)
    // public static void main(String[] args) {
    //     DAO d = new DAO();
    //     List<Student> list = d.getAll();
    //     System.out.println(list.get(0).getName());
    // }
}
