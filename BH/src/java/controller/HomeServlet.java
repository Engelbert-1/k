/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import dal.ProductDAO;
import model.Category;
import model.Product;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

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
        DAO dao = new DAO();
        List<Product> list = dao.getTop18();
        List<Category> listC = dao.getAllCategory();
        Product last = dao.getLast();

        request.setAttribute("listP", list);
        request.setAttribute("listCC", listC);
        request.setAttribute("p", last);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
//          DAO dao = new DAO();
//
//    // Lấy thông tin trang hiện tại
//    String pageParam = request.getParameter("page");
//    int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
//    int recordsPerPage = 6; // Số lượng sản phẩm trên mỗi trang
//
//    // Lấy tổng số sản phẩm
//    int totalProducts = dao.getTotalProducts();
//    int totalPages = (int) Math.ceil(totalProducts * 1.0 / recordsPerPage);
//
//    // Lấy sản phẩm cho trang hiện tại
//    List<Product> list = dao.getProductsByPage(currentPage, recordsPerPage);
//    
//    request.setAttribute("listP", list);
//    request.setAttribute("totalPages", totalPages);
//    request.setAttribute("currentPage", currentPage);
//
//    request.getRequestDispatcher("Home.jsp").forward(request, response);
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
        processRequest(request, response);
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

}
