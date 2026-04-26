package com.dao;//dao

import java.sql.*;
import java.util.*;

import com.model.Student;

public class HostelDAO {

    // 🔌 DATABASE CONNECTION
	public Connection getConnection() throws Exception {

	    Class.forName("com.mysql.cj.jdbc.Driver");

	    return DriverManager.getConnection(
	        "jdbc:mysql://localhost:3307/hostel_db",
	        "root",
	        "root"
	    );
	}
        
    

    // ➕ ADD STUDENT
    public void addStudent(Student s) throws Exception {

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO hostelstudents VALUES(?,?,?,?,?,?)"
        );

        ps.setInt(1, s.getStudentID());
        ps.setString(2, s.getStudentName());
        ps.setString(3, s.getRoomNumber());
        ps.setDate(4, s.getAdmissionDate());
        ps.setDouble(5, s.getFeesPaid());
        ps.setDouble(6, s.getPendingFees());

        ps.executeUpdate();
    }

    // ❌ DELETE STUDENT
    public void deleteStudent(int id) throws Exception {

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "DELETE FROM hostelstudents WHERE StudentID=?"
        );

        ps.setInt(1, id);

        ps.executeUpdate();
    }

    // ✏ UPDATE STUDENT
    public void updateStudent(Student s) throws Exception {

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "UPDATE hostelstudents SET StudentName=?, RoomNumber=?, AdmissionDate=?, FeesPaid=?, PendingFees=? WHERE StudentID=?"
        );

        ps.setString(1, s.getStudentName());
        ps.setString(2, s.getRoomNumber());
        ps.setDate(3, s.getAdmissionDate());
        ps.setDouble(4, s.getFeesPaid());
        ps.setDouble(5, s.getPendingFees());
        ps.setInt(6, s.getStudentID());

        ps.executeUpdate();
    }

    // 📋 GET ALL STUDENTS
    public List<Student> getAllStudents() throws Exception {

        List<Student> list = new ArrayList<>();

        Connection con = getConnection();

        Statement st = con.createStatement();

        ResultSet rs = st.executeQuery("SELECT * FROM hostelstudents");

        while (rs.next()) {

            Student s = new Student();

            s.setStudentID(rs.getInt(1));
            s.setStudentName(rs.getString(2));
            s.setRoomNumber(rs.getString(3));
            s.setAdmissionDate(rs.getDate(4));
            s.setFeesPaid(rs.getDouble(5));
            s.setPendingFees(rs.getDouble(6));

            list.add(s);
        }

        return list;
    }

    // 💰 PENDING FEES
    public List<Student> getPendingFeesStudents() throws Exception {

        List<Student> list = new ArrayList<>();

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM hostelstudents WHERE PendingFees > 0"
        );

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {

            Student s = new Student();

            s.setStudentID(rs.getInt(1));
            s.setStudentName(rs.getString(2));
            s.setRoomNumber(rs.getString(3));
            s.setAdmissionDate(rs.getDate(4));
            s.setFeesPaid(rs.getDouble(5));
            s.setPendingFees(rs.getDouble(6));

            list.add(s);
        }

        return list;
    }

    // 🏠 ROOM WISE REPORT
    public List<Student> getStudentsByRoom(String room) throws Exception {

        List<Student> list = new ArrayList<>();

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM hostelstudents WHERE RoomNumber=?"
        );

        ps.setString(1, room);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {

            Student s = new Student();

            s.setStudentID(rs.getInt(1));
            s.setStudentName(rs.getString(2));
            s.setRoomNumber(rs.getString(3));
            s.setAdmissionDate(rs.getDate(4));
            s.setFeesPaid(rs.getDouble(5));
            s.setPendingFees(rs.getDouble(6));

            list.add(s);
        }

        return list;
    }

    // 📅 DATE RANGE REPORT (FIXED SAFE VERSION)
    public List<Student> getStudentsByDate(String from, String to) throws Exception {

        List<Student> list = new ArrayList<>();

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM hostelstudents WHERE AdmissionDate BETWEEN ? AND ?"
        );

        try {

            if (from != null && to != null && !from.isEmpty() && !to.isEmpty()) {

                ps.setDate(1, java.sql.Date.valueOf(from));
                ps.setDate(2, java.sql.Date.valueOf(to));

            } else {
                return list;
            }

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Student s = new Student();

                s.setStudentID(rs.getInt(1));
                s.setStudentName(rs.getString(2));
                s.setRoomNumber(rs.getString(3));
                s.setAdmissionDate(rs.getDate(4));
                s.setFeesPaid(rs.getDouble(5));
                s.setPendingFees(rs.getDouble(6));

                list.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}