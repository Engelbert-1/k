package controller;

import dal.RoomTypeDAO;
import model.RoomType;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/roomType")
public class RoomTypeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));

        RoomType roomType = new RoomType();
        roomType.setName(name);
        roomType.setPrice(price);

        RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
        roomTypeDAO.insert(roomType);
        
        response.sendRedirect("home.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
        List<RoomType> roomTypes = roomTypeDAO.getAllRoomTypes();
        request.setAttribute("roomTypes", roomTypes);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}