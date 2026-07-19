package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.AdminDAO;
import com.onlineexam.model.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO dao = new AdminDAO();

        Admin admin = dao.login(username, password);

        if(admin != null){

            response.sendRedirect("admin/dashboard.jsp");

        }else{

            response.getWriter().println("Invalid Admin Username or Password!");

        }

    }

}