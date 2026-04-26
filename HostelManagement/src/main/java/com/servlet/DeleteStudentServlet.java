package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HostelDAO;
//delete
@WebServlet("/DeleteStudentServlet")
public class DeleteStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));

            new HostelDAO().deleteStudent(id);

            res.sendRedirect("index.jsp");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}