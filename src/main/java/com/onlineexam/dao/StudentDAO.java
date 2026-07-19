package com.onlineexam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.onlineexam.model.Student;
import com.onlineexam.util.DBConnection;

public class StudentDAO {

    // Existing method (KEEP THIS)
    public boolean registerStudent(Student student) {

        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO students(name, email, password) VALUES (?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, student.getName());
            ps.setString(2, student.getEmail());
            ps.setString(3, student.getPassword());

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

    // ADD THIS NEW METHOD
    public Student loginStudent(String email, String password) {

        Student student = null;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM students WHERE email=? AND password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            java.sql.ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                student = new Student();

                student.setId(rs.getInt("student_id"));
                student.setName(rs.getString("name"));
                student.setEmail(rs.getString("email"));
                student.setPassword(rs.getString("password"));
            }

            rs.close();
            ps.close();
            con.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return student;
    }
}