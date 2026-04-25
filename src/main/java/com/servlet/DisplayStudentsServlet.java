package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HostelDAO;

@WebServlet("/DisplayStudentsServlet")
public class DisplayStudentsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            req.setAttribute("list", new HostelDAO().getAllStudents());
            req.getRequestDispatcher("studentdisplay.jsp").forward(req, res);

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}