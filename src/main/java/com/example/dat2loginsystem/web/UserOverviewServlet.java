package com.example.dat2loginsystem.web;

import com.example.dat2loginsystem.entities.Person;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "userOverviewServlet", value = "/user-overview-servlet")
public class UserOverviewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person person = (Person) request.getSession().getAttribute("person");
        if (person.getRole().equalsIgnoreCase("Admin")) {
            request.getRequestDispatcher("WEB-INF/userOverview.jsp").forward(request, response);
        } else {
            request.setAttribute("besked", "You are not authorized to view this page");
            request.getRequestDispatcher("WEB-INF/userSite.jsp").forward(request, response);
        }
    }
}
