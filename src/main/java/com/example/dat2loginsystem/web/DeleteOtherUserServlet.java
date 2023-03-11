package com.example.dat2loginsystem.web;

import com.example.dat2loginsystem.entities.Person;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "deleteOtherUserServlet", value = "/delete-other-user-servlet")
public class DeleteOtherUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String deletedUser = request.getParameter("deleteUser");
        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        personMap.remove(deletedUser);
        request.getRequestDispatcher("WEB-INF/userOverview.jsp").forward(request, response);
    }
}
