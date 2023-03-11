package com.example.dat2loginsystem.web;

import com.example.dat2loginsystem.entities.Person;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "changePasswordServlet", value = "/change-password-servlet")
public class ChangePasswordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        Person person = (Person) request.getSession().getAttribute("person");
        String newPassword = request.getParameter("newPassword");
        if (newPassword.equals("")) {
            request.setAttribute("newPasswordBesked", "Password cannot be empty");
            request.getRequestDispatcher("WEB-INF/userSite.jsp").forward(request, response);
        } else {
            person.setPassword(newPassword);
            personMap.put(person.getName(), person);
            request.setAttribute("newPasswordBesked", "Password changed");
            request.getRequestDispatcher("WEB-INF/userSite.jsp").forward(request, response);
        }
    }
}
