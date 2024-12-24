/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Instructors;
import Models.Subjects;
import java.sql.*;
import java.util.ArrayList;

/**
 *Xử lý dữ liệu trong db
 * @author TomTit
 */
public class InstructorDAO extends DBContext{
    PreparedStatement stm;//Thực hiện câu lệnh SQL
    ResultSet rs;//Lưu trữ dữ liệu khi lấy về
    
    public ArrayList<Subjects> getSubjects() {
        ArrayList<Subjects> data=new ArrayList<Subjects>();
        try {
            String strSQL="select * from Subjects";
            stm=connection.prepareStatement(strSQL);
            rs=stm.executeQuery();
            while(rs.next()){
                String id=rs.getString(1);//thay 1 bằng "SubjectID"
                String name=rs.getString(2);
                Subjects s=new Subjects(id, name);
                data.add(s);
            }
        } catch (Exception e) {
            System.out.println("getSubjects:"+e.getMessage());
        }
        return data;
    }

    public ArrayList<Instructors> getInstructors() {
        ArrayList<Instructors> data=new ArrayList<Instructors>();
        try {
            String strSQL="select * from Instructors i join Subjects s on i.SubjectID=s.SubjectID";
            stm=connection.prepareStatement(strSQL);
            rs=stm.executeQuery();
            while(rs.next()){
                String id=rs.getString(1);//thay 1 bằng "SubjectID"
                String name=rs.getString(2);
                String dob=String.valueOf(rs.getDate(3));
                String gender=String.valueOf(rs.getBoolean(4));
                String subject=rs.getString(7);
                Instructors s=new Instructors(id, name, dob, gender, subject);
                data.add(s);
            }
        } catch (Exception e) {
            System.out.println("getInstructors:"+e.getMessage());
        }
        return data;
    }
    
}
