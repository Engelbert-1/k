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
import java.util.Random;

@WebServlet(name = "ForgotServlet", urlPatterns = {"/forgot"})
public class ForgotServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgotServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotServlet at " + request.getContextPath() + "</h1>");
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
        String email = request.getParameter("email");
        DAO dao = new DAO();
        Account account = dao.checkUserExist(user);
        
        if (account == null) {
            request.setAttribute("error", "Username does not exist!");
            request.getRequestDispatcher("forgot.jsp").forward(request, response);
        } else {
            Account verifiedAccount = dao.checkUser(user, email);
            if (verifiedAccount == null) {
                request.setAttribute("error1", "Email does not match the username!");
                request.getRequestDispatcher("forgot.jsp").forward(request, response);
            } else {
                String newPassword = generateRandomPassword();
                dao.updateAcc(account.getId(), user, hashPassword(newPassword), email);
                sendEmail(user, email, newPassword);
                request.setAttribute("success", "Password has been sent to email " + email);
                request.getRequestDispatcher("forgot.jsp").forward(request, response);
            }
        }
    }

    private String generateRandomPassword() {
        int length = 8; // Độ dài mật khẩu mới
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        Random random = new Random();
        StringBuilder password = new StringBuilder(length);
        
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            password.append(characters.charAt(index));
        }
        
        return password.toString();
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

    private void sendEmail(String user, String email, String newPassword) {
        // Logic gửi email (giả định bạn sẽ thực hiện phần này)
        // Bạn cần thêm thư viện gửi email để thực hiện gửi email
        System.out.println("Email sent to " + email + " with new password: " + newPassword);
    }

    @Override
    public String getServletInfo() {
        return "Forgot password servlet";
    }
}