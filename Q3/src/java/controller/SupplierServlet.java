package controller;

import dal.SupplierDAO;
import model.Supplier;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SupplierServlet extends HttpServlet {
    private SupplierDAO supplierDAO;

    public SupplierServlet() {
        supplierDAO = new SupplierDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Supplier> suppliers = supplierDAO.getAllSuppliers();
        request.setAttribute("suppliers", suppliers);
        request.getRequestDispatcher("suppliers.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("filterByName".equals(action)) {
            String name = request.getParameter("name");
            List<Supplier> suppliers = supplierDAO.filterByName(name);
            request.setAttribute("suppliers", suppliers);
            request.getRequestDispatcher("suppliers.jsp").forward(request, response);
        } else if ("filterByYear".equals(action)) {
            int year = Integer.parseInt(request.getParameter("year"));
            List<Supplier> suppliers = supplierDAO.filterByYear(year);
            request.setAttribute("suppliers", suppliers);
            request.getRequestDispatcher("suppliers.jsp").forward(request, response);
        } else if ("delete".equals(action)) {
            String code = request.getParameter("code");
            supplierDAO.deleteSupplier(code);
            response.sendRedirect("show"); // Gọi lại doGet để cập nhật danh sách
        }
    }
}