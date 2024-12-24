/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class sum extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet count</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet count at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String n_raw = request.getParameter("n");
        int n, sum = 0;
        String error = "", result = "";

        try {
            // Chuyển đổi giá trị n
            n = Integer.parseInt(n_raw);
            request.setAttribute("n", n);

            // Kiểm tra nếu n không phải số lẻ > 0
            if (n <= 0 || n % 2 == 0) {
                throw new Exception();  // Ném lỗi nếu không hợp lệ
            } else {
                // Tính tổng các số nguyên tố từ 1 đến n-1
                for (int i = 2; i < n; i++) {
                    if (checkPrime(i)) {
                        sum += i;
                    }
                }
                result = "The sum of prime numbers from 1 to " + (n - 1) + " is: " + sum;
                request.setAttribute("result", result);
                request.getRequestDispatcher("MyExam.jsp").forward(request, response);
            }

        } catch (Exception e) {
            // Hiển thị thông báo lỗi nếu đầu vào không hợp lệ
            error = "You must input an odd number > 0";
            request.setAttribute("error", error);
            request.getRequestDispatcher("MyExam.jsp").forward(request, response);
        }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private boolean checkPrime(int n) {
        int count = 0;
        for (int i = 1; i <= n / 2; i++) {
            if (n % i == 0) {
                count++;
            }
        }
        return count == 1;
    }
}
