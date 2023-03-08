package com.example.dat2loginsystem;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.example.dat2loginsystem.entities.Person;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {

    @Override
    public void init() {
        List<Person> personList = new ArrayList<>();
        personList.add(new Person("Peter", "123", "Admin"));
        for (int i = 1; i <= 5; i++) {
            personList.add(new Person("User" + i, "kode" + i));
        }

        Map<String, Person> personMap = new HashMap<>();
        for (Person person : personList) {
            personMap.put(person.getName(), person);
        }

        getServletContext().setAttribute("personMap", personMap);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        System.out.println("name: " + name);
        System.out.println("password: " + password);

        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        if (!personMap.containsKey(name)) {
            request.setAttribute("besked", "User not found");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        Person person = personMap.get(name);
        if (!person.getPassword().equals(password)) {
            request.setAttribute("besked", "Wrong password");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        HttpSession session = request.getSession();
        session.setAttribute("person", person);
        request.getRequestDispatcher("WEB-INF/userSite.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("newUserName");
        String password = request.getParameter("newUserPassword");
        String confirmPassword = request.getParameter("newUserConfirmPassword");

        if (!password.equals(confirmPassword)) {
            request.setAttribute("newUserBesked", "Password doesn't match");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        Map<String, Person> personMap = (Map<String, Person>) getServletContext().getAttribute("personMap");
        if (personMap.containsKey(name)) {
            request.setAttribute("newUserBesked", "Name already exists");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        Person person = new Person(name, password);
        personMap.put(name, person);

        HttpSession session = request.getSession();
        session.setAttribute("person", person);
        request.getRequestDispatcher("WEB-INF/userSite.jsp").forward(request, response);
    }
}