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
import jakarta.servlet.http.HttpSession;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "UpdateAccount", urlPatterns = {"/updateAcc"})
public class UpdateAccount extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateAccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAccount at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        DAO dao = new DAO();
        account = dao.checkUserExist(account.getUser());
        request.setAttribute("Account", account);
        request.getRequestDispatcher("updateAcc.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        session.setAttribute("Account", account);

        String user = request.getParameter("user");
        String oldPassword = request.getParameter("pass_old");
        String newPassword = request.getParameter("pass");
        String confirmPassword = request.getParameter("re_pass");
        String email = request.getParameter("email");

        if (hashPassword(oldPassword).equals(account.getPass())) {
            if (!newPassword.equals(confirmPassword)) {
                request.setAttribute("error", "Password does not match!");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                if (!newPassword.isEmpty()) {
                    dao.updateAcc(account.getId(), user, hashPassword(newPassword), email);
                } else {
                    dao.updateAccNoPass(account.getId(), user, email);
                }
                response.sendRedirect("home");
            }
        } else {
            request.setAttribute("error", "Old password is incorrect!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
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
        return "Update Account servlet";
    }
}