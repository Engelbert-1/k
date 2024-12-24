package servlet;

import dal.ProductDAO;
import model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        List<Product> productList = productDAO.getAllProducts(); // Lấy danh sách sản phẩm từ DAO
        int numPages = productDAO.getNumberOfPages(); // Lấy số trang từ DAO
        int page = Integer.parseInt(request.getParameter("page") != null ? request.getParameter("page") : "1");

        request.setAttribute("products", productList);
        request.setAttribute("num", numPages);
        request.setAttribute("page", page);

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}