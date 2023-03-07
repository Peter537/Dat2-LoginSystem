package com.example.dat2loginsystem;

import com.example.dat2loginsystem.entities.Person;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "deleteUserServlet", value = "/delete-user-servlet")
public class DeleteUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        Person person = (Person) request.getSession().getAttribute("person");
        personMap.remove(person.getName());
        request.getSession().invalidate();
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
