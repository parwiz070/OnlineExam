package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.QuestionDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteQuestion")
public class DeleteQuestionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int questionId = Integer.parseInt(request.getParameter("id"));

        QuestionDAO dao = new QuestionDAO();

        dao.deleteQuestion(questionId);

        response.sendRedirect("viewQuestions");
    }
}