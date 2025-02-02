package com.bakaqc.flower.controller;

import com.bakaqc.flower.dao.CategoriesDAO;
import com.bakaqc.flower.dao.ProductDAO;
import com.bakaqc.flower.model.Categories;
import com.bakaqc.flower.model.Product;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        CategoriesDAO categoriesDAO = new CategoriesDAO();
        List<Categories> categorieses = categoriesDAO.selectAll();
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.selectAll();
        request.setAttribute("categories", categorieses);
        request.setAttribute("products", products);
        request.getSession().setAttribute("isActive", 2);
        request.getRequestDispatcher("/view/ProductAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
