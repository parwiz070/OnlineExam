package com.onlineexam.controller;

import java.io.IOException;
import java.util.List;

import com.onlineexam.dao.QuestionDAO;
import com.onlineexam.model.Question;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewQuestions")
public class ViewQuestionsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        QuestionDAO dao = new QuestionDAO();

        List<Question> questions = dao.getAllQuestions();

        request.setAttribute("questions", questions);

        request.getRequestDispatcher("admin/viewQuestions.jsp")
               .forward(request, response);
    }
}