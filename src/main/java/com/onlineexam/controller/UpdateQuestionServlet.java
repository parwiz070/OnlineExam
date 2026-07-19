package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.dao.QuestionDAO;
import com.onlineexam.model.Question;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateQuestion")
public class UpdateQuestionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        Question question = new Question();

        question.setQuestionId(Integer.parseInt(request.getParameter("questionId")));
        question.setQuestion(request.getParameter("question"));
        question.setOption1(request.getParameter("option1"));
        question.setOption2(request.getParameter("option2"));
        question.setOption3(request.getParameter("option3"));
        question.setOption4(request.getParameter("option4"));
        question.setCorrectAnswer(request.getParameter("correctAnswer"));

        QuestionDAO dao = new QuestionDAO();

        if (dao.updateQuestion(question)) {

        	response.sendRedirect("viewQuestions?updated=true");

        } else {

            response.getWriter().println("Question update failed!");

        }
    }
}