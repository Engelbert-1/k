///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package dal;
//
//import model.Account;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
///**
// *
// * @author DELL
// */
//public class CustomerDAO extends DBContext {
//
//    public Account getAccount(String user, String pass) {
//        String sql = "select * from Account\n"
//                + "where [user]=?"
//                + " and pass=?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, user);
//            st.setString(2, pass);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                return new Account(rs.getInt("uID"),
//                        rs.getString("user"),
//                        rs.getString("pass"),
//                        rs.getFloat("amount"),
//                        rs.getInt("isSell"),
//                        rs.getInt("isAdmin"));
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return null;
//    }
//    
//     
//}
