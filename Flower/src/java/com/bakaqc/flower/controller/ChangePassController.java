package com.bakaqc.flower.controller;

import com.bakaqc.flower.dao.CategoriesDAO;
import com.bakaqc.flower.dao.UserDAO;
import com.bakaqc.flower.model.Categories;
import com.bakaqc.flower.model.User;
import com.bakaqc.flower.service.Hash;
import java.io.*;
import java.util.List;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class ChangePassController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        List<Categories> listCAT = CategoriesDAO.getInstance().selectAll();

        request.setAttribute("listCAT", listCAT);
        request.getRequestDispatcher("/view/user_change_pass.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String oldPass = request.getParameter("oldPassword");
        String newPass = request.getParameter("newPassword");
        String conPass = request.getParameter("conPassword");
        String oldPassword = Hash.hashCode(oldPass);
        String newPassword = Hash.hashCode(newPass);
        String conPassword = Hash.hashCode(conPass);

        HttpSession session = request.getSession();
        User us = (User) session.getAttribute("user");
        if (oldPassword.equals(us.getPassword())) {
            if (newPass.length() < 6) {
                String errGotPass = "Mật khẩu mới phải nhập tối thiểu 6 ký tự!";
                request.setAttribute("errGotPass", errGotPass);

                this.doGet(request, response);
            } else {
                if (newPassword.equals(oldPassword)) {
                    String errOldPass = "Mật khẩu mới trùng với mật khẩu cũ!";
                    request.setAttribute("errOldPass", errOldPass);

                    this.doGet(request, response);
                } else {
                    if (conPassword.equals(newPassword)) {
                        UserDAO.getInstance().changePass(us.getId(), newPassword);

//                String success = "Đổi mật khẩu thành công.";
//                request.setAttribute("success", success);
//                request.getRequestDispatcher("/view/user_profile.jsp").forward(request, response);
                        response.sendRedirect("profile");

                    } else {
                        String errConfPass = "Xác nhận Mật khẩu mới không đúng!";
                        request.setAttribute("errConfPass", errConfPass);

                        this.doGet(request, response);
                    }
                }

            }
        } else {
            String errPass = "Mật khẩu không đúng!";
            request.setAttribute("errPass", errPass);

            this.doGet(request, response);
        }
    }

}
