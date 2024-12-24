/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author DELL
 */
public class TinhServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dai_raw = request.getParameter("dai");
        String rong_raw = request.getParameter("rong");
        String cv = request.getParameter("cv");
        String dt = request.getParameter("dt");

        String[] d=request.getParameterValues("d");
        double a,b;
        String ms = "";
        PrintWriter out = response.getWriter();
        try {
            a = Double.parseDouble(dai_raw);
            b = Double.parseDouble(rong_raw);
//cach 1
            if ((cv==null) && (dt==null)) {
                ms = "Chua chon gi";
            } else if(cv!=null && dt==null){
                ms = "Chu vi: " + (a + b) * 2;
            } else if (cv == null && dt != null) {
                ms = "Dien tich: " + (a * b);
            } else {
                ms = "Chu vi:"+(a+b)*2+"dien tich:"+(a*b);
            }

//cach 2

//        if (d == null) {
//            ms = "Chưa chọn gì";
//        } else if (d.length == 2) {
//            ms = "Chu vi: " + (a + b) * 2 + " diện tích: " + (a * b);
//        } else if (d[0].equals("0")) {
//            ms = "Chu vi: " + (a + b) * 2;
//        } else {
//            ms = "Diện tích: " + (a * b);
//        }

            out.println("<h1>"+ms+"</h1>");
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.html").forward(request, response);
    }
    
}
