package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Admin;
import model.Student;

/**
 *
 * @author nguye
 */
@WebServlet(name = "AuthenServlet", urlPatterns = {"/authen"})
public class AuthenServlet extends HttpServlet {

    // Method to handle GET requests
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        DAO cdb = new DAO();
        
        // Check if the user is logged in
        if (session.getAttribute("account") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            String action = request.getParameter("action");

            if (action.equals("add")) {
                request.getRequestDispatcher("add.jsp").forward(request, response);
            }

            if (action.equals("delete")) {
                String id = request.getParameter("id");
                try {
                    cdb.delete(id);  // ID is a String, no need for Integer parsing
                    request.getRequestDispatcher("list").forward(request, response);
                } catch (Exception e) {
                    System.out.println("Error deleting student: " + e.getMessage());
                }
            }

            if (action.equals("update")) {
                String id = request.getParameter("id");
                try {
                    Student student = cdb.getStudentByID(id);  // Use getStudentByID (correct method name)
                    if (student != null) {
                        request.setAttribute("category", student);
                        request.getRequestDispatcher("update.jsp").forward(request, response);
                    } else {
                        response.getWriter().println("Student not found");
                    }
                } catch (Exception e) {
                    System.out.println("Error updating student: " + e.getMessage());
                }
            }
        }
    }

    // Method to handle POST requests (optional, depending on your needs)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle any POST-specific actions here (if needed)
        processRequest(request, response);
    }

    // General request processing method (if required)
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AuthenServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AuthenServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // Return servlet description (optional)
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
