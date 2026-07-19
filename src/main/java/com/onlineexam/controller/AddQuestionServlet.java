package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.QuestionDAO;
import com.onlineexam.model.Question;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addQuestion")
public class AddQuestionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        Question question = new Question();

        question.setQuestion(request.getParameter("question"));
        question.setOption1(request.getParameter("option1"));
        question.setOption2(request.getParameter("option2"));
        question.setOption3(request.getParameter("option3"));
        question.setOption4(request.getParameter("option4"));
        question.setCorrectAnswer(request.getParameter("correctAnswer"));

        QuestionDAO dao = new QuestionDAO();

        if (dao.addQuestion(question)) {

            response.sendRedirect("admin/addQuestion.jsp?success=true");

        } else {

            response.getWriter().println("Failed to save question!");

        }
    }
}