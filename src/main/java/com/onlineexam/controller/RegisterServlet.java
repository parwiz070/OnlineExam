package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.StudentDAO;
import com.onlineexam.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Student student = new Student();
        student.setName(name);
        student.setEmail(email);
        student.setPassword(password);

        StudentDAO dao = new StudentDAO();

        if (dao.registerStudent(student)) {
            response.getWriter().println("Student Registered Successfully!");
        } else {
            response.getWriter().println("Registration Failed!");
        }
    }
}