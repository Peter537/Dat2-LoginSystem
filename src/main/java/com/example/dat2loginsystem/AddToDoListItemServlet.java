package com.example.dat2loginsystem;

import com.example.dat2loginsystem.entities.Person;
import com.example.dat2loginsystem.entities.ToDoItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "addToDoListItemServlet", value = "/add-to-do-list-item-servlet")
public class AddToDoListItemServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("addItemUser");
        String title = request.getParameter("addItemTitle");
        String description = request.getParameter("addItemDescription");
        long timeCreated = System.currentTimeMillis();
        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        Person person = personMap.get(name);
        person.addToDoListItem(new ToDoItem(title, description, timeCreated));
        request.setAttribute("person", person);
        request.getRequestDispatcher("WEB-INF/userToDoList.jsp").forward(request, response);
    }
}
