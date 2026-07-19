package com.onlineexam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.onlineexam.model.Question;
import com.onlineexam.util.DBConnection;

public class QuestionDAO {

    public boolean addQuestion(Question question) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO questions(question, option1, option2, option3, option4, correct_answer) VALUES (?, ?, ?, ?, ?, ?)";
            
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, question.getQuestion());
            ps.setString(2, question.getOption1());
            ps.setString(3, question.getOption2());
            ps.setString(4, question.getOption3());
            ps.setString(5, question.getOption4());
            ps.setString(6, question.getCorrectAnswer());

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

            ps.close();
            con.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }



public List<Question> getAllQuestions(){
	
	

    List<Question> list = new ArrayList<>();

    try{

        Connection con = DBConnection.getConnection();

        String sql="SELECT * FROM questions";

        PreparedStatement ps=con.prepareStatement(sql);

        ResultSet rs=ps.executeQuery();

        while(rs.next()){

            Question q=new Question();

            q.setQuestionId(rs.getInt("question_id"));
            q.setQuestion(rs.getString("question"));
            q.setOption1(rs.getString("option1"));
            q.setOption2(rs.getString("option2"));
            q.setOption3(rs.getString("option3"));
            q.setOption4(rs.getString("option4"));
            q.setCorrectAnswer(rs.getString("correct_answer"));

            list.add(q);

        }

        rs.close();
        ps.close();
        con.close();

    }catch(Exception e){

        e.printStackTrace();

    }

    return list;

}

public boolean deleteQuestion(int questionId) {

    boolean status = false;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "DELETE FROM questions WHERE question_id=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, questionId);

        int rows = ps.executeUpdate();

        if (rows > 0) {
            status = true;
        }

        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return status;
}

public Question getQuestionById(int questionId) {

    Question question = null;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "SELECT * FROM questions WHERE question_id=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, questionId);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {

            question = new Question();

            question.setQuestionId(rs.getInt("question_id"));
            question.setQuestion(rs.getString("question"));
            question.setOption1(rs.getString("option1"));
            question.setOption2(rs.getString("option2"));
            question.setOption3(rs.getString("option3"));
            question.setOption4(rs.getString("option4"));
            question.setCorrectAnswer(rs.getString("correct_answer"));

        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return question;
}

public boolean updateQuestion(Question question) {

    boolean status = false;

    try {

        Connection con = DBConnection.getConnection();

        String sql = "UPDATE questions SET question=?, option1=?, option2=?, option3=?, option4=?, correct_answer=? WHERE question_id=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, question.getQuestion());
        ps.setString(2, question.getOption1());
        ps.setString(3, question.getOption2());
        ps.setString(4, question.getOption3());
        ps.setString(5, question.getOption4());
        ps.setString(6, question.getCorrectAnswer());
        ps.setInt(7, question.getQuestionId());

        int rows = ps.executeUpdate();

        if (rows > 0) {
            status = true;
        }

        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return status;
}


}