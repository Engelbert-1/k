<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession(false);
    if (session != null) {
        session.invalidate(); // Hủy session
    }
    response.sendRedirect("login.jsp"); // Chuyển hướng về trang đăng nhập
%>