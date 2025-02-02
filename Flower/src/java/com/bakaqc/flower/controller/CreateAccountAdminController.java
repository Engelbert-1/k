package com.bakaqc.flower.controller;

import com.bakaqc.flower.dao.AdminDAO;
import com.bakaqc.flower.model.Admin;
import com.bakaqc.flower.model.option.AdminRole;
import com.bakaqc.flower.service.Hash;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CreateAccountAdminController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            Admin admin = new Admin();
            admin.setUserName(username);
            admin.setPassword(Hash.hashCode(password));
            admin.setRole(AdminRole.create("Admin"));
            AdminDAO.getInstance().insert(admin);
            String url = request.getHeader("referer");
            response.sendRedirect(url);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
    }
    
}

