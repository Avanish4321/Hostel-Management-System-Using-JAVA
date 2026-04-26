package com.servlet;
//add
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HostelDAO;
import com.model.Student;

@WebServlet("/AddStudentServlet")
public class AddStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            Student s = new Student();

            s.setStudentID(Integer.parseInt(req.getParameter("id")));
            s.setStudentName(req.getParameter("name"));
            s.setRoomNumber(req.getParameter("room"));
            s.setAdmissionDate(Date.valueOf(req.getParameter("date")));
            s.setFeesPaid(Double.parseDouble(req.getParameter("paid")));
            s.setPendingFees(Double.parseDouble(req.getParameter("pending")));

            new HostelDAO().addStudent(s);

            // ⭐ IMPORTANT FIX (THIS WAS MISSING)
            res.sendRedirect("index.jsp");

        } catch(Exception e) {
            e.printStackTrace();

            // show error instead of blank page
            res.getWriter().println("Error: " + e.getMessage());
        }
    }
}