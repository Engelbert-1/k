/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bakaqc.flower.controller;

import com.bakaqc.flower.dao.CheckoutDAO;
import com.bakaqc.flower.dao.ProductDAO;
import com.bakaqc.flower.model.Product;
import com.bakaqc.flower.model.User;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class CheckoutController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        CheckoutDAO d = new CheckoutDAO();
        HttpSession session = request.getSession();
        String pid = request.getParameter("pid");
        Product p = ProductDAO.getInstance().getById(pid);
        User user = (User) session.getAttribute("user");
        d.addOder(user, p);

        
        session.setAttribute("successMessage", "Bạn đã đặt hàng thành công. Cảm ơn và chúc một ngày tốt lành!");

        response.sendRedirect("home");
    }

}
