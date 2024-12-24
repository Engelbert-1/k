package controller;

import dal.AdminnDAO;
import model.Adminn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Adminn admin = new Adminn();
        admin.setUsername(username);
        admin.setPassword(password);
        admin.setRole(2); // User role

        AdminnDAO adminDAO = new AdminnDAO();
        adminDAO.insert(admin);

        response.sendRedirect("login.jsp");
    }
}