package controller;

import model.Account;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html><body>");
            out.println("<h1>Login Servlet</h1>");
            out.println("</body></html>");
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
        String remember = request.getParameter("remember");

        // Mã hóa mật khẩu
        String hashedPassword = hashPassword(pass);

        DAO dao = new DAO();
        Account account = dao.login(user, hashedPassword);

        if (account == null) {
            request.setAttribute("error", "Username or password does not exist!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("userid", account.getId());
            session.setAttribute("account", account);

            Cookie cuser = new Cookie("user", user);
            Cookie cpass = new Cookie("pass", pass);
            Cookie cremember = new Cookie("remember", remember);

            if (remember != null) {
                cuser.setMaxAge(86400 * 365); // 1 year
                cpass.setMaxAge(86400 * 365); // 1 year
                cremember.setMaxAge(86400 * 365); // 1 year
            } else {
                cuser.setMaxAge(0);
                cpass.setMaxAge(0);
                cremember.setMaxAge(0);
            }

            response.addCookie(cuser);
            response.addCookie(cpass);
            response.addCookie(cremember);
            response.sendRedirect("home");
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
        return "Login Servlet";
    }
}