package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.QuestionDAO;
import com.onlineexam.model.Question;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editQuestion")
public class EditQuestionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int questionId = Integer.parseInt(request.getParameter("id"));

        QuestionDAO dao = new QuestionDAO();

        Question question = dao.getQuestionById(questionId);

        request.setAttribute("question", question);

        request.getRequestDispatcher("admin/editQuestion.jsp")
               .forward(request, response);
    }
}