package com.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HostelDAO;
import com.model.Student;

@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            Student s = new Student();

            s.setStudentID(Integer.parseInt(req.getParameter("id")));
            s.setStudentName(req.getParameter("name"));
            s.setRoomNumber(req.getParameter("room"));

            String date = req.getParameter("date");
            if(date != null && !date.isEmpty()) {
                s.setAdmissionDate(Date.valueOf(date));
            }

            s.setFeesPaid(Double.parseDouble(req.getParameter("paid")));
            s.setPendingFees(Double.parseDouble(req.getParameter("pending")));

            new HostelDAO().updateStudent(s);

            res.sendRedirect("index.jsp");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}