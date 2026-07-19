package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.StudentDAO;
import com.onlineexam.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        StudentDAO dao = new StudentDAO();

        Student student = dao.loginStudent(email, password);

        if (student != null) {

        	request.getSession().setAttribute("student", student);

        	response.sendRedirect("student/dashboard.jsp");

        } else {

            response.getWriter().println("Invalid Email or Password!");

        }
    }
}