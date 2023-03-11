package com.example.dat2loginsystem.web;

import com.example.dat2loginsystem.entities.Person;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "toDoListServlet", value = "/to-do-list-servlet")
public class ToDoListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("checkToDoListUser");
        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        Person person = personMap.get(name);
        request.setAttribute("person", person);
        request.getRequestDispatcher("WEB-INF/userToDoList.jsp").forward(request, response);
    }
}
