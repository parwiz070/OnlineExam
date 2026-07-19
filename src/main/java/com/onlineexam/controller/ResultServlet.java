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

@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        QuestionDAO dao = new QuestionDAO();

        List<Question> questions = dao.getAllQuestions();

        int score = 0;

        System.out.println("Total Questions = " + questions.size());

        for (Question q : questions) {

            String selected = request.getParameter("q" + q.getQuestionId());

            System.out.println("-------------------");
            System.out.println("Question ID = " + q.getQuestionId());
            System.out.println("Selected = " + selected);
            System.out.println("Correct = " + q.getCorrectAnswer());

            if (selected != null &&
                selected.equalsIgnoreCase(q.getCorrectAnswer())) {
                score++;
            }
        }

        request.setAttribute("score", score);
        request.setAttribute("total", questions.size());

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}