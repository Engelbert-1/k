package controller;

import dal.AdminnDAO;
import model.Adminn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminnDAO adminDAO = new AdminnDAO();
        Adminn admin = adminDAO.getAdmin(username, password);

        if (admin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("username", admin.getUsername());
            session.setAttribute("role", admin.getRole());
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("errorMessage", "Invalid username or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}