package controller;

import model.Account;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegiterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String email = request.getParameter("email");

        if (!pass.equals(repass)) {
            request.setAttribute("error", "Passwords do not match!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            DAO dao = new DAO();
            Account account = dao.checkUserExist(user);
            if (account == null) {
                // Mã hóa mật khẩu
                String hashedPassword = hashPassword(pass);
                dao.signup(user, hashedPassword, email);
                request.setAttribute("success", "Account created successfully!");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                request.setAttribute("error1", "Username already exists!");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : messageDigest) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}