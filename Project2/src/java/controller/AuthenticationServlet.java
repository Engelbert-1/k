package controller;

import dal.AdminDAO;
import model.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        AdminDAO adminDAO = new AdminDAO();
        Admin admin = adminDAO.getAdmin(username, password);

        if (admin != null) {
            // Đăng nhập thành công
            HttpSession session = request.getSession();
            session.setAttribute("account", admin);
            response.sendRedirect("welcome.jsp"); // Chuyển hướng đến trang chào mừng
        } else {
            // Đăng nhập không thành công
            request.setAttribute("error", "Invalid username or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}