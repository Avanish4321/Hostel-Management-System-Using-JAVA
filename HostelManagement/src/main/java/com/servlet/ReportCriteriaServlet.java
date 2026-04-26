package com.servlet;
//report
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HostelDAO;

@WebServlet("/ReportCriteriaServlet")
public class ReportCriteriaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            String type = req.getParameter("type");

            HostelDAO dao = new HostelDAO();

            if(type.equals("pending")) {
                req.setAttribute("list", dao.getPendingFeesStudents());
            }
            else if(type.equals("room")) {
                String room = req.getParameter("room");
                req.setAttribute("list", dao.getStudentsByRoom(room));
            }
            else if(type.equals("date")) {
                String from = req.getParameter("from");
                String to = req.getParameter("to");
                req.setAttribute("list", dao.getStudentsByDate(from, to));
            }

            req.getRequestDispatcher("report_result.jsp").forward(req, res);

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}